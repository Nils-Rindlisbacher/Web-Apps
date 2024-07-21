import { Routes } from '@angular/router';
import { TrickGeneratorComponent } from "./trick-generator/trick-generator.component";
import { TrickOverviewComponent } from "./trick-overview/trick-overview.component";
import { CompletedTricksComponent } from "./completed-tricks/completed-tricks.component";
import {HomeComponent} from "./home/home.component";
import {LoginComponent} from "./login/login.component";
import {RegisterComponent} from "./register/register.component";

export const routes: Routes = [

  { path: '', component: HomeComponent },

  { path: 'Generator', component: TrickGeneratorComponent },
  { path: 'Overview', component: TrickOverviewComponent },
  { path: 'Completed', component: CompletedTricksComponent },
  { path: 'Completed/:type', component: CompletedTricksComponent },

  { path: 'Login', component: LoginComponent },
  { path: 'Register', component: RegisterComponent }

];
