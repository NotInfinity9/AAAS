@Component
@Entry
struct Index {
  @State message: string = '等待操作';
  @State buttonLabel: string = '点击开始';

  build() {
    Flex({ direction: FlexDirection.Column }) {
      // 文本：屏幕上四分之一处
      Text(this.message)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)
        .width('100%')
        .margin({ top: '25%' }); // 将文本位置移到屏幕上四分之一处

      // 按钮：屏幕从顶上往下看3/4的地方
      Button(this.buttonLabel)
        .fontSize(25)
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          if (this.buttonLabel === '点击开始') {
            this.message = '开始记录';
            this.buttonLabel = '停止记录';
          } else {
            this.message = '等待操作';
            this.buttonLabel = '点击开始';
          }
        })
        .width('100%')
        .height(50)
        .margin({ top: '75%' }); // 将按钮位置移到屏幕从顶上往下看3/4的地方
    }
    .height('100%')
    .width('100%');
  }
}
