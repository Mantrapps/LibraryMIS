/**
 * Created by Kaiz on 3/17/17.
 */


import { Hero} from './hero';
import { mysql} from 'mysql/';

export class queryBook{
  book:any;
  q:string;
  constructor(query:string){
    this.q=query;
  }
  get(){

  }
}
