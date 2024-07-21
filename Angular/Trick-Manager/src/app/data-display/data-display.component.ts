import {Component, Inject, inject, Input, OnInit} from '@angular/core';
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
import {RouterLink} from "@angular/router";


export interface CreateDialogData {
  tricks: any[];
  newCompletedTrick: any;
}

export interface DeleteDialogData {
  deletedTrickName: string;
}


@Component({
  selector: 'app-data-display',
  standalone: true,
  imports: [
    NgForOf,
    HttpClientModule,
    NgClass,
    MatIconModule,
    RouterLink
  ],
  templateUrl: './data-display.component.html',
  styleUrl: './data-display.component.scss'
})
export class DataDisplayComponent implements OnInit{
  @Input() page: any;
  @Input() type: any;

  httpClient = inject(HttpClient);

  isDropdownActive = false;

  newCompletedTrick: any;
  deletedTrick: any;

  selectedType: string = '';
  randomTrick: string = '';

  allTricksOfType: any[] = [];
  allCompletedTricksOfType: any[] = [];
  allTricks: any[] = [];
  trickTypes: any[] = [];
  constructor(public dialog: MatDialog) {}

  openDialog(): void {
    const dialogRef = this.dialog.open(CreateDialog, {
      data: {tricks: this.allTricksOfType, newCompletedTrick: this.newCompletedTrick},
    });

    dialogRef.afterClosed().subscribe(result => {
      this.newCompletedTrick = this.allTricks.find(trick => trick.name == result);

      if(this.newCompletedTrick) {
        const headers = {'Content-Type': 'application/json'};
        const body = {
          id: this.newCompletedTrick.id,
          name: this.newCompletedTrick.name,
          type: this.newCompletedTrick.type,
          completed: true
        };

        this.httpClient.put('http://localhost:8080/trick/' + this.newCompletedTrick.id, body, {headers}).subscribe(data => this.newCompletedTrick.id = data);
      }
    });
  }

  openDeleteDialog(deletedTrickName: any): void {
    const dialogRef = this.dialog.open(DeleteDialog, {
      data: {deletedTrickName: deletedTrickName},
    });
    dialogRef.afterClosed().subscribe(result => {
      this.deletedTrick = this.allTricks.find(trick => trick.name == deletedTrickName);

      const headers = { 'Content-Type': 'application/json' };
      const body = { id: + this.deletedTrick.id, name: this.deletedTrick.name, type: this.deletedTrick.type, completed: false };

      this.httpClient.put('http://localhost:8080/trick/' + this.deletedTrick.id, body, { headers }).subscribe(data => this.deletedTrick.id = data);
    });
  }

  ngOnInit(): void {
    this.fetchData();
    if(this.type != undefined) this.selectedType = this.type;
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
export class CreateDialog {
  constructor(
    public dialogRef: MatDialogRef<CreateDialog>,
    @Inject(MAT_DIALOG_DATA) public data: CreateDialogData,
  ) {}

  onNoClick(): void {
    this.dialogRef.close();
  }
}



@Component({
  selector: 'delete-completed-trick-dialog',
  templateUrl: 'delete-completed-trick-dialog.html',
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
export class DeleteDialog {
  constructor(
    public dialogRef: MatDialogRef<DeleteDialog>,
    @Inject(MAT_DIALOG_DATA) public data: DeleteDialogData,
  ) {}

  onNoClick(): void {
    this.dialogRef.close();
  }
}

