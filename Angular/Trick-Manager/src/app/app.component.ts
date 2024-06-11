import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import {NavigationBarComponent} from "./navigation-bar/navigation-bar.component";
import {Title} from "@angular/platform-browser";
@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, NavigationBarComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'Trick-Manager';

  constructor(private titleService: Title) {
    this.titleService.setTitle($localize`${this.title}`)
  }
}
