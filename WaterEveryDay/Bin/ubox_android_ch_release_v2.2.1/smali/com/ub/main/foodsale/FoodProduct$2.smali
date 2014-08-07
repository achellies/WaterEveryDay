.class Lcom/ub/main/foodsale/FoodProduct$2;
.super Landroid/os/Handler;
.source "FoodProduct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/foodsale/FoodProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/foodsale/FoodProduct;


# direct methods
.method constructor <init>(Lcom/ub/main/foodsale/FoodProduct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodProduct$2;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    .line 750
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 752
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 765
    :goto_0
    return-void

    .line 754
    :pswitch_0
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodProduct$2;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    #getter for: Lcom/ub/main/foodsale/FoodProduct;->timeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/ub/main/foodsale/FoodProduct;->access$0(Lcom/ub/main/foodsale/FoodProduct;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u670d\u52a1\u5668\u65f6\u95f4:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ub/main/foodsale/FoodProduct$2;->this$0:Lcom/ub/main/foodsale/FoodProduct;

    #getter for: Lcom/ub/main/foodsale/FoodProduct;->serverTime:J
    invoke-static {v2}, Lcom/ub/main/foodsale/FoodProduct;->access$1(Lcom/ub/main/foodsale/FoodProduct;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ub/main/util/Tool;->getTimeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
