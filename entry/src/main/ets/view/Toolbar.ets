import { WEIGHT } from '../constants/Constants'

@Component
export struct Toolbar {

  @State title : string = '';

  build() {
    Row() {
      Text(this.title).fontSize(20)
    }
    .width(WEIGHT)
    .height('50')
    .margin({ left: 10 })
    .justifyContent(FlexAlign.Start)
  }
}