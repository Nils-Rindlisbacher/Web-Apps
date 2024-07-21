import { Component } from '@angular/core';
import {DataDisplayComponent} from "../data-display/data-display.component";
import {ActivatedRoute} from "@angular/router";

@Component({
  selector: 'app-trick-generator',
  standalone: true,
  imports: [
    DataDisplayComponent
  ],
  templateUrl: './trick-generator.component.html',
  styleUrl: './trick-generator.component.scss'
})
export class TrickGeneratorComponent {
  DataDisplayComponent = DataDisplayComponent;
  type!: string | null;
  constructor(private route: ActivatedRoute) {}

  ngOnInit() {
    this.type = this.route.snapshot.paramMap.get('type'); // Get the route parameter
  }
}
