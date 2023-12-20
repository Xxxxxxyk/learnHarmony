import { WEIGHT } from '../constants/Constants'
import { Toolbar } from '../view/Toolbar'

@Entry
@Component
struct FruitPage {
  @State list: Array<string> = [];

  aboutToAppear() {
    this.list = ["苹果", "李子", "香蕉", "西瓜", "菠萝", "榴莲", "黄元帅", "红富士",];
  }

  build() {
    Column() {
      Row() {
        Text('排行榜').fontSize(20)
      }.width(WEIGHT)
      .height('50')
      .margin({ left: 10 })
      .justifyContent(FlexAlign.Start)

      Row() {
        Text('排名').width('33%')
        Text('种类').width('33%')
        Text('得票数').width('33%')
      }.width(WEIGHT)
      .justifyContent(FlexAlign.Center)

      List() {
        ForEach(this.list, (item, index) => {
          ListItem(){
            Text(item).fontSize(100)
          }
        });
      }
    }
    .width(WEIGHT)
    .height(WEIGHT)
  }
}