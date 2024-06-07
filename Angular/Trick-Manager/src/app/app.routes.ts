import { Routes } from '@angular/router';
import { TrickGeneratorComponent } from "./trick-generator/trick-generator.component";
import { TrickOverviewComponent } from "./trick-overview/trick-overview.component";

export const routes: Routes = [

  { path: 'Generator', component: TrickGeneratorComponent },
  { path: 'Overview', component: TrickOverviewComponent }

];
