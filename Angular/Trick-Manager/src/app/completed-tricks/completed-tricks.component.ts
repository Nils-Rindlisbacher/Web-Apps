import { Component } from '@angular/core';
import {DataDisplayComponent} from "../data-display/data-display.component";
import {ActivatedRoute} from "@angular/router";


@Component({
  selector: 'app-completed-tricks',
  standalone: true,
    imports: [
        DataDisplayComponent
    ],
  templateUrl: './completed-tricks.component.html',
  styleUrl: './completed-tricks.component.scss'
})
export class CompletedTricksComponent {
  DataDisplayComponent = DataDisplayComponent;
  type!: string | null;
  constructor(private route: ActivatedRoute) {}

  ngOnInit() {
    this.type = this.route.snapshot.paramMap.get('type'); // Get the route parameter
  }

  getCompletedTricks() {

  }

}
