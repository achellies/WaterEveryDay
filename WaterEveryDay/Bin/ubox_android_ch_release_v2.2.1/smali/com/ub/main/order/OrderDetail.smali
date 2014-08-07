.class public Lcom/ub/main/order/OrderDetail;
.super Lcom/ub/main/BaseActivity;
.source "OrderDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ub/main/net/ImageLoadingObserver;


# instance fields
.field private back:Landroid/widget/Button;

.field private buyTime:Landroid/widget/TextView;

.field private couponMoney:Landroid/widget/TextView;

.field private couponName:Landroid/widget/TextView;

.field private couponType:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private head:Landroid/view/ViewGroup;

.field private icon:Landroid/widget/ImageView;

.field private imageLoading:Lcom/ub/main/net/ImageLoading;

.field private money:Landroid/widget/TextView;

.field private name:Landroid/widget/TextView;

.field private num:Landroid/widget/TextView;

.field private numTitle:Landroid/widget/TextView;

.field private orderId:Landroid/widget/TextView;

.field private orderMoney:Landroid/widget/TextView;

.field private orderStatus:Landroid/widget/TextView;

.field private orderType:Landroid/widget/TextView;

.field private ortherName1:Landroid/widget/TextView;

.field private ortherName2:Landroid/widget/TextView;

.field private ortherName3:Landroid/widget/TextView;

.field private ortherName4:Landroid/widget/TextView;

.field private ortherValue1:Landroid/widget/TextView;

.field private ortherValue2:Landroid/widget/TextView;

.field private ortherValue3:Landroid/widget/TextView;

.field private ortherValue4:Landroid/widget/TextView;

.field private send:Landroid/widget/Button;

.field private task:Lcom/ub/main/net/ImageLoadingTaskInfo;

.field private tasklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/net/ImageLoadingTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->tasklist:Ljava/util/ArrayList;

    .line 315
    new-instance v0, Lcom/ub/main/order/OrderDetail$1;

    invoke-direct {v0, p0}, Lcom/ub/main/order/OrderDetail$1;-><init>(Lcom/ub/main/order/OrderDetail;)V

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->handler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoading;->cancelLoading()V

    .line 352
    iput-object v1, p0, Lcom/ub/main/order/OrderDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    invoke-static {p0}, Lcom/ub/main/net/ImageLoading;->clearCacheImage(Landroid/content/Context;)V

    .line 357
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->tasklist:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->tasklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    iput-object v1, p0, Lcom/ub/main/order/OrderDetail;->tasklist:Ljava/util/ArrayList;

    .line 361
    :cond_1
    iput-object v1, p0, Lcom/ub/main/order/OrderDetail;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 362
    return-void
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->send:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    return-void
.end method

.method private initModel()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/ub/main/order/OrderDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 186
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v7, :cond_1

    .line 188
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 189
    const-string v2, "imgUrl"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    iget-object v3, p0, Lcom/ub/main/order/OrderDetail;->icon:Landroid/widget/ImageView;

    const v4, 0x7f080148

    .line 192
    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    .line 188
    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 193
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->tasklist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ub/main/order/OrderDetail;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/ub/main/net/ImageLoading;

    iget-object v2, p0, Lcom/ub/main/order/OrderDetail;->tasklist:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ub/main/order/OrderDetail;->handler:Landroid/os/Handler;

    invoke-direct {v0, v2, v3, v1}, Lcom/ub/main/net/ImageLoading;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    .line 196
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->imageLoading:Lcom/ub/main/net/ImageLoading;

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoading;->start()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderId:Landroid/widget/TextView;

    const-string v2, "orderId"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderStatus:Landroid/widget/TextView;

    const-string v2, "orderStatus"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderMoney:Landroid/widget/TextView;

    const-string v2, "orderMoney"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->buyTime:Landroid/widget/TextView;

    const-string v2, "orderTime"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->name:Landroid/widget/TextView;

    const-string v2, "name"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->money:Landroid/widget/TextView;

    const-string v2, "money"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->num:Landroid/widget/TextView;

    const-string v2, "num"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->couponType:Landroid/widget/TextView;

    const-string v2, "couponType"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->couponName:Landroid/widget/TextView;

    const-string v2, "couponName"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->couponMoney:Landroid/widget/TextView;

    const-string v2, "couponMoney"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const-string v0, "type"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 277
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 278
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderType:Landroid/widget/TextView;

    const-string v1, "\u53cb\u5b9d\u81ea\u52a8\u552e\u8d27\u673a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName1:Landroid/widget/TextView;

    const-string v1, "\u552e\u8d27\u673a\u7f16\u53f7:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue1:Landroid/widget/TextView;

    const-string v1, "vmid"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName2:Landroid/widget/TextView;

    const-string v1, "\u552e\u8d27\u673a\u5730\u5740:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue2:Landroid/widget/TextView;

    const-string v1, "address"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->send:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->num:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->numTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderType:Landroid/widget/TextView;

    const-string v2, "\u7535\u5f71\u7968"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName1:Landroid/widget/TextView;

    const-string v2, "\u9662\u7ebf\u540d\u79f0:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue1:Landroid/widget/TextView;

    const-string v2, "cinemaName"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName2:Landroid/widget/TextView;

    const-string v2, "\u573a       \u6b21:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue2:Landroid/widget/TextView;

    const-string v2, "movieStreak"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName3:Landroid/widget/TextView;

    const-string v2, "\u5ea7       \u4f4d:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue3:Landroid/widget/TextView;

    const-string v2, "seat"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    const-string v0, "expire"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->send:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->send:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 240
    :pswitch_2
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderType:Landroid/widget/TextView;

    const-string v2, "\u5f69\u7968"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName1:Landroid/widget/TextView;

    const-string v2, "\u5f69\u7968\u54c1\u79cd:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue1:Landroid/widget/TextView;

    const-string v2, "lotteryName"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName2:Landroid/widget/TextView;

    const-string v2, "\u6295\u6ce8\u671f\u53f7:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue2:Landroid/widget/TextView;

    const-string v2, "lotteryDate"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName3:Landroid/widget/TextView;

    const-string v2, "\u6295\u6ce8\u7c7b\u578b:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue3:Landroid/widget/TextView;

    const-string v2, "lotteryType"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName4:Landroid/widget/TextView;

    const-string v2, "\u6295\u6ce8\u53f7\u7801:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue4:Landroid/widget/TextView;

    const-string v2, "lotteryNumber"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->send:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 256
    :pswitch_3
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderType:Landroid/widget/TextView;

    const-string v1, "\u56e2\u8d2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName1:Landroid/widget/TextView;

    const-string v1, "\u6709\u6548\u671f:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue1:Landroid/widget/TextView;

    const-string v1, "buyDate"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName2:Landroid/widget/TextView;

    const-string v1, "\u5546\u5bb6\u5730\u5740:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue2:Landroid/widget/TextView;

    const-string v1, "buyAddress"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->send:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 264
    :pswitch_4
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderType:Landroid/widget/TextView;

    const-string v2, "\u4e50\u6dd8"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName1:Landroid/widget/TextView;

    const-string v2, "\u6536\u8d27\u4eba:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue1:Landroid/widget/TextView;

    const-string v2, "lebuyName"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName2:Landroid/widget/TextView;

    const-string v2, "\u624b\u673a\u53f7\u7801:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue2:Landroid/widget/TextView;

    const-string v2, "lebuyNumber"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName3:Landroid/widget/TextView;

    const-string v2, "\u6536\u8d27\u5730\u5740:"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue3:Landroid/widget/TextView;

    const-string v2, "lebuyAddress"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->send:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->head:Landroid/view/ViewGroup;

    .line 145
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->back:Landroid/widget/Button;

    .line 146
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->back:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->title:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->title:Landroid/widget/TextView;

    const-string v1, "\u8ba2\u5355\u660e\u7ec6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderId:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderStatus:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderMoney:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->buyTime:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f080148

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->icon:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f080149

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderType:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f08014a

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->name:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->numTitle:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->money:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->num:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->couponType:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->couponName:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f080150

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->couponMoney:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName1:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue1:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName2:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue2:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName3:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue3:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherName4:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f080158

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->ortherValue4:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f080146

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/order/OrderDetail;->send:Landroid/widget/Button;

    .line 179
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 327
    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u8bf7\u7b49\u5f85\u63a5\u6536!"

    invoke-static {p0, v0}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-static {p0, p3}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ImageLoaded(Lcom/ub/main/net/ImageLoadingTaskInfo;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->icon:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 293
    :sswitch_0
    invoke-virtual {p0}, Lcom/ub/main/order/OrderDetail;->finish()V

    goto :goto_0

    .line 296
    :sswitch_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_REGET_TICKET:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 297
    iget-object v0, p0, Lcom/ub/main/order/OrderDetail;->orderId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->createMovieOrderDetailPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 296
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/order/OrderDetail;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x7f0800ed -> :sswitch_0
        0x7f080146 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/ub/main/order/OrderDetail;->setContentView(I)V

    .line 133
    invoke-direct {p0}, Lcom/ub/main/order/OrderDetail;->initView()V

    .line 134
    invoke-direct {p0}, Lcom/ub/main/order/OrderDetail;->initModel()V

    .line 135
    invoke-direct {p0}, Lcom/ub/main/order/OrderDetail;->initControl()V

    .line 136
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 342
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 343
    invoke-direct {p0}, Lcom/ub/main/order/OrderDetail;->clear()V

    .line 344
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 307
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/ub/main/order/OrderDetail;->finish()V

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
