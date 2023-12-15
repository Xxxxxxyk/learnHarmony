import router from '@ohos.router';

@Entry
@Component
struct Second {

  //接受上个页面传过来的参数
  @State src: Record<string, string> = router.getParams() as Record<string, string>;

  build() {
    Column() {
      Text(this.src['src']).fontColor(Color.Green).fontSize(30)
      Blank()
      Button('返回').onClick(() => {
        //以下两个,都是开启返回确认框
        // router.enableAlertBeforeBackPage({ message: "确认返回吗?" })
        router.showAlertBeforeBackPage({ message: "确认返回吗?" })
        router.back()
      }).width(100)
    }
  }
}