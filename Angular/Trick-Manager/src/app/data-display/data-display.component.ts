import {Component, inject, Input} from '@angular/core';
import {NgClass, NgForOf} from "@angular/common";
import {HttpClient, HttpClientModule} from "@angular/common/http";

@Component({
  selector: 'app-data-display',
  standalone: true,
  imports: [
    NgForOf,
    HttpClientModule,
    NgClass
  ],
  templateUrl: './data-display.component.html',
  styleUrl: './data-display.component.scss'
})
export class DataDisplayComponent {
  @Input() page: any;

  private httpClient = inject(HttpClient);

  isDropdownActive = false;

  selectedType = '';
  randomTrick = '';

  allTricksOfType: any[] = [];

  data: any[] = [];

  trick_types: any[] = [];

  ngOnInit(): void {
    this.fetchData();
  }

  fetchData() {
    this.httpClient.get('http://localhost:8080/tricks')
      .subscribe((tricks: any) => {
        this.data = tricks;
      });

    this.httpClient.get('http://localhost:8080/types')
      .subscribe((types: any) => {
        this.trick_types = types;
      });
  }

  getAllTricksOfType(){
    this.allTricksOfType = [];

    for (let trick of this.data){
      if(trick.type == this.selectedType){
        this.allTricksOfType.push(trick.name);
      }
    }

    this.randomTrick = (this.allTricksOfType[this.getRandomInt(this.allTricksOfType.length)]);

  }

  getRandomInt(max: number) {
    return Math.floor(Math.random() * max);
  }

}

