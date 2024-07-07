import { Component } from '@angular/core';
import {DataDisplayComponent} from "../data-display/data-display.component";


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
  protected DataDisplayComponent = DataDisplayComponent;


  getCompletedTricks() {

  }

}
