import { WEIGHT } from '../constants/Constants'
import { Toolbar } from '../view/Toolbar'

@Entry
@Component
struct FruitPage {
  @State list: Array<string> = [];

  aboutToAppear() {
    this.list = ["苹果", "李子", "香蕉", "西瓜", "菠萝", "榴莲", "黄元帅", "红富士",];
  }

  aboutToDisappear() {
    this.list = null;
  }

  build() {
    Column() {
      //这里按官方文档写的, 不知道编译器为什么报错
      //does not comply with the UI component syntax. <etsLint>
      //但是可以正常编译运行
      Toolbar({ title: "排行榜" })
      Row() {
        Text('排名').width('33%')
        Text('种类').width('33%')
        Text('得票数').width('33%')
      }.width(WEIGHT)
      .justifyContent(FlexAlign.Center)

      List() {
        ForEach(this.list, (item, index) => {
          ListItem() {
            Text(item).fontSize(100)
          }
        });
      }
    }
    .width(WEIGHT)
    .height(WEIGHT)
  }
}