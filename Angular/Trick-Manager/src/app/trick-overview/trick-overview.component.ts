import { Component } from '@angular/core';
import {DataDisplayComponent} from "../data-display/data-display.component";
import {ActivatedRoute} from "@angular/router";

@Component({
  selector: 'app-trick-overview',
  standalone: true,
  imports: [
    DataDisplayComponent
  ],
  templateUrl: './trick-overview.component.html',
  styleUrl: './trick-overview.component.scss'
})
export class TrickOverviewComponent {
  DataDisplayComponent = DataDisplayComponent;
  type!: string | null;
  constructor(private route: ActivatedRoute) {}

  ngOnInit() {
    this.type = this.route.snapshot.paramMap.get('type'); // Get the route parameter
  }
}
