import {Component, Inject, inject, Input} from '@angular/core';
import {NgClass, NgForOf} from "@angular/common";
import {HttpClient, HttpClientModule, HttpHeaders} from "@angular/common/http";
import {MatIconModule} from '@angular/material/icon';
import {
  MAT_DIALOG_DATA,
  MatDialog,
  MatDialogActions,
  MatDialogClose,
  MatDialogContent,
  MatDialogRef,
  MatDialogTitle
} from "@angular/material/dialog";
import {MatFormFieldModule} from "@angular/material/form-field";
import {MatInputModule} from "@angular/material/input";
import {FormsModule} from "@angular/forms";
import {MatButtonModule} from "@angular/material/button";
import {MatOption, MatSelect} from "@angular/material/select";
import {catchError} from "rxjs";


export interface DialogData {
  tricks: any[];
  newCompletedTrick: any;
}


@Component({
  selector: 'app-data-display',
  standalone: true,
  imports: [
    NgForOf,
    HttpClientModule,
    NgClass,
    MatIconModule
  ],
  templateUrl: './data-display.component.html',
  styleUrl: './data-display.component.scss'
})
export class DataDisplayComponent {
  @Input() page: any;

  httpClient = inject(HttpClient);

  isDropdownActive = false;

  newCompletedTrick: any;

  selectedType: string = '';
  randomTrick: string = '';

  allTricksOfType: any[] = [];
  allCompletedTricksOfType: any[] = [];
  allTricks: any[] = [];

  trickTypes: any[] = [];

  constructor(public dialog: MatDialog) {}

  openDialog(): void {
    console.log('Dialog open');

    const dialogRef = this.dialog.open(DialogOverviewExampleDialog, {
      data: {tricks: this.allTricksOfType, newCompletedTrick: this.newCompletedTrick},
    });

    dialogRef.afterClosed().subscribe(result => {
      this.newCompletedTrick = this.allTricks.find(trick => trick.name == result);

      const headers = { 'Content-Type': 'application/json' };
      const body = { id: + this.newCompletedTrick.id, name: this.newCompletedTrick.name, type: this.newCompletedTrick.type, completed: true };

      this.httpClient.put('http://localhost:8080/trick/' + this.newCompletedTrick.id, body, { headers });
      console.log('The dialog was closed');
    });
  }

  ngOnInit(): void {
    this.fetchData();
  }

  fetchData() {
    this.httpClient.get('http://localhost:8080/tricks')
      .subscribe((tricks: any) => {
        this.allTricks = tricks;
      });

    this.httpClient.get('http://localhost:8080/types')
      .subscribe((types: any) => {
        this.trickTypes = types;
      });
  }

  getAllTricksOfType(){
    this.allTricksOfType = [];
    this.allCompletedTricksOfType = [];

    for (let trick of this.allTricks){
      if(trick.type == this.selectedType){
        this.allTricksOfType.push(trick.name);
        if (trick.completed){
          this.allCompletedTricksOfType.push(trick.name);
        }
      }
    }

    this.randomTrick = (this.allTricksOfType[this.getRandomInt(this.allTricksOfType.length)]);
  }

  getRandomInt(max: number) {
    return Math.floor(Math.random() * max);
  }
}


@Component({
  selector: 'create-completed-trick-dialog',
  templateUrl: 'create-completed-trick-dialog.html',
  standalone: true,
  imports: [
    MatFormFieldModule,
    MatInputModule,
    FormsModule,
    MatButtonModule,
    MatDialogTitle,
    MatDialogContent,
    MatDialogActions,
    MatDialogClose,
    MatSelect,
    MatOption,
  ],
})
export class DialogOverviewExampleDialog {
  constructor(
    public dialogRef: MatDialogRef<DialogOverviewExampleDialog>,
    @Inject(MAT_DIALOG_DATA) public data: DialogData,
  ) {}

  onNoClick(): void {
    this.dialogRef.close();
  }
}

