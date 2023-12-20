//相当于一个布局文件
import router from '@ohos.router'

//只有被@entty修饰的组件才能显示在页面上
@Entry
@Component
struct Index {

  //装饰器 发生变动后会自动刷新UI
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold).fontColor(Color.Blue)
        Blank()
        Button("Next")
          .onClick(() => {
            //这里踩坑, 官方教程说的是新建一个page,
            // 我直接新建了一个文件后发现点击无反应,
            // 后在main.pages.json5里加入这个页面后才能跳转,
            // 与android一致,新增页面需要在清单文件注册

            //另外与教程不一致的新增了启动模式参数,参考android的activity启动模式

            //传递参数
            router.pushUrl({ url: 'pages/Second', params: { 'src': '我是index传的参数' } }, router.RouterMode.Standard)
          })
      }
      .width('100%')
    }
    .height('100%')
  }

  onPageShow() {
    //页面展示,被Entry修饰后有
    //几个基础的数据类型
    //两种字符串的表达
    let x: string = "123";
    let x1: string = '123';
    //数字
    let y: number = 123;
    //boolean
    let z: boolean = true;
    //数组
    let array: Array<number> = [1, 2, 3];
    //元组
    let a: [string, number];
    a = ['1', 1];
    //枚举
    enum Mouth {
      Jay, Feb,
    }
    //相当于object
    let b: unknown = 1;

    //空类型
    let c: null = null;
    let d: undefined = undefined;

    //联合类型, 可以是指定的多种类型,但不能是其他的
    let f: number | string;
    f = 1;
    f = "1";
    //以下会报错
    // f = true;
  }

  onPageHide(){
    //页面消失,被Entry修饰后有
  }

  onBackPress(){
    //页面返回,被Entry修饰后有
    //返回false代表系统处理返回事件,返回true代表自己处理,点击返回后不会关闭
    return false;
  }

  aboutToAppear() {
    //组件创建,被Component修饰后有
  }

  aboutToDisappear(){
    //组件销毁,,被Component修饰后有

  }
}