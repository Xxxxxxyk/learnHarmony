//顶部的一个toolbar
import { WEIGHT } from '../constants/Constants'

@Component
export struct Toolbar {
  build() {
    Row() {
      Text('排行榜')
    }.width(WEIGHT)
    .height('50')
    .justifyContent(FlexAlign.Start)
  }
}