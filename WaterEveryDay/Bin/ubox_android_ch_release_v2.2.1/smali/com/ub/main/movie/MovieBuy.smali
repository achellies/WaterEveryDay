.class public Lcom/ub/main/movie/MovieBuy;
.super Lcom/ub/main/BaseActivity;
.source "MovieBuy.java"

# interfaces
.implements Lcom/ub/main/data/PayResultProcessListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ub/main/net/ImageLoadingObserver;


# static fields
.field private static final IMAGE_LOAD1:I = 0x2710

.field private static final IMAGE_LOAD2:I = 0x2711

.field private static final IMAGE_LOAD3:I = 0x2712

.field public static final REQUEST_ID_YOUHUI_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LIFE"

.field public static blIsOver:Z


# instance fields
.field private account:Lcom/ub/main/data/CreditCardAccountInfo;

.field private actImg:Landroid/widget/ImageView;

.field private alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

.field private back:Landroid/widget/Button;

.field private cinema_code:Ljava/lang/String;

.field private cinema_name:Ljava/lang/String;

.field private coupon:Lcom/ub/main/data/Coupon;

.field private couponImg:Landroid/widget/ImageView;

.field private dlg:Landroid/app/ProgressDialog;

.field private film_date:Ljava/lang/String;

.field private film_name:Ljava/lang/String;

.field private film_time:Ljava/lang/String;

.field private film_type:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private hasCoupon:Z

.field private head:Landroid/view/ViewGroup;

.field private imageLoading:Lcom/ub/main/net/ImageLoading;

.field private money:Ljava/lang/String;

.field private movieImg:Landroid/widget/ImageView;

.field private order_id:Ljava/lang/String;

.field private pay_type:I

.field private phone:Ljava/lang/String;

.field private phoneView:Landroid/widget/TextView;

.field private pid:Ljava/lang/String;

.field private plan_code:Ljava/lang/String;

.field private promotion:Lcom/ub/main/data/Promotion;

.field private seat_layer:Ljava/lang/String;

.field private seat_list:Ljava/lang/String;

.field private sid:Ljava/lang/String;

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

.field private title1:Landroid/widget/TextView;

.field private totalPrice:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/ub/main/movie/MovieBuy;->pay_type:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->order_id:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/movie/MovieBuy;->hasCoupon:Z

    .line 131
    new-instance v0, Lcom/ub/main/movie/MovieBuy$1;

    invoke-direct {v0, p0}, Lcom/ub/main/movie/MovieBuy$1;-><init>(Lcom/ub/main/movie/MovieBuy;)V

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->handler:Landroid/os/Handler;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->sid:Ljava/lang/String;

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->pid:Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->tasklist:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method private EPOSPayResultProcess(Ljava/lang/String;)V
    .locals 3
    .parameter "orderCode"

    .prologue
    .line 677
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/ub/main/movie/MovieBuy;->paySuccess()V

    .line 689
    :goto_0
    return-void

    .line 681
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 682
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 683
    const-string v1, "\u652f\u4ed8\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u4fe1\u7528\u5361\u662f\u5426\u6b63\u5e38\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 684
    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ub/main/movie/MovieBuy;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->phoneView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/movie/MovieBuy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/ub/main/movie/MovieBuy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 708
    invoke-direct/range {p0 .. p7}, Lcom/ub/main/movie/MovieBuy;->reqestTicketsOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lcom/ub/main/movie/MovieBuy;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$12(Lcom/ub/main/movie/MovieBuy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ub/main/movie/MovieBuy;->order_id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->order_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ub/main/movie/MovieBuy;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/ub/main/movie/MovieBuy;->doPay()V

    return-void
.end method

.method static synthetic access$5(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->cinema_code:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->plan_code:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->sid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->seat_list:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ub/main/movie/MovieBuy;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->seat_layer:Ljava/lang/String;

    return-object v0
.end method

.method private doOrder(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 499
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 500
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 501
    const-string v1, "\u60a8\u786e\u8ba4\u8981\u652f\u4ed8\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 502
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ub/main/movie/MovieBuy$3;

    invoke-direct {v2, p0}, Lcom/ub/main/movie/MovieBuy$3;-><init>(Lcom/ub/main/movie/MovieBuy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 508
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/movie/MovieBuy$4;

    invoke-direct {v2, p0, p1}, Lcom/ub/main/movie/MovieBuy$4;-><init>(Lcom/ub/main/movie/MovieBuy;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 533
    return-void
.end method

.method private doPay()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 537
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v7

    .line 538
    .local v7, nFormat:Ljava/text/NumberFormat;
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 539
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->totalPrice:Ljava/lang/Float;

    invoke-virtual {v7, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 541
    .local v9, price:Ljava/lang/String;
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getNewprice()Ljava/lang/String;

    move-result-object v9

    .line 546
    :cond_0
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 547
    .local v8, numPrice:Ljava/lang/Float;
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, -0x414f39085f4a1273L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 548
    iput v10, p0, Lcom/ub/main/movie/MovieBuy;->pay_type:I

    .line 551
    :cond_1
    iget v0, p0, Lcom/ub/main/movie/MovieBuy;->pay_type:I

    packed-switch v0, :pswitch_data_0

    .line 609
    :goto_0
    return-void

    .line 556
    :pswitch_0
    new-instance v0, Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-direct {v0, p0}, Lcom/ub/main/util/alipay/AlixMainManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    .line 558
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0, p0}, Lcom/ub/main/util/alipay/AlixMainManager;->SetPayResultBehaviorListener(Lcom/ub/main/data/PayResultProcessListener;)V

    .line 560
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0}, Lcom/ub/main/util/alipay/AlixMainManager;->alixToolInstalledCheck()Z

    move-result v6

    .line 562
    .local v6, alixToolIsExist:Z
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/movie/MovieBuy;->film_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->film_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/ub/main/util/alipay/AlixMainManager;->setOrderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0, v6}, Lcom/ub/main/util/alipay/AlixMainManager;->makeOrderToAlix(Z)Z

    goto :goto_0

    .line 568
    .end local v6           #alixToolIsExist:Z
    :pswitch_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_BY_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 569
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/movie/MovieBuy;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createPayByEposString(Ljava/lang/String;Lcom/ub/main/data/CreditCardAccountInfo;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 568
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/movie/MovieBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 572
    invoke-static {p0}, Lcom/ub/main/util/Tool;->getDlg(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    .line 573
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/ub/main/movie/MovieBuy$5;

    invoke-direct {v1, p0}, Lcom/ub/main/movie/MovieBuy$5;-><init>(Lcom/ub/main/movie/MovieBuy;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 581
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v10}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 582
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u8fdb\u884c\u652f\u4ed8..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 584
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 587
    :pswitch_2
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_BY_BALANCE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 588
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->order_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->createPayByBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 587
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/movie/MovieBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 591
    invoke-static {p0}, Lcom/ub/main/util/Tool;->getDlg(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    .line 592
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/ub/main/movie/MovieBuy$6;

    invoke-direct {v1, p0}, Lcom/ub/main/movie/MovieBuy$6;-><init>(Lcom/ub/main/movie/MovieBuy;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 600
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v10}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 601
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u8fdb\u884c\u652f\u4ed8..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 603
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBestCoupon()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 799
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->seat_list:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 800
    .local v6, seats:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->plan_code:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->pid:Ljava/lang/String;

    .line 801
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_BEST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 802
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->sid:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/movie/MovieBuy;->pid:Ljava/lang/String;

    const-string v3, "0"

    invoke-static {v4, v4, v0, v2, v3}, Lcom/ub/main/util/NetConfig;->createGetBestCouponPostString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 803
    const-string v5, "\u6b63\u5728\u68c0\u67e5\u662f\u5426\u6709\u4f18\u60e0\u5238\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 801
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/movie/MovieBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 804
    return-void
.end method

.method private initData()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieBuy;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 218
    .local v10, intent:Landroid/content/Intent;
    if-eqz v10, :cond_1

    .line 219
    const-string v0, "cinema_code"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->cinema_code:Ljava/lang/String;

    .line 220
    const-string v0, "plan_code"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->plan_code:Ljava/lang/String;

    .line 221
    const-string v0, "sid"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->sid:Ljava/lang/String;

    .line 222
    const-string v0, "seat_list"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->seat_list:Ljava/lang/String;

    .line 223
    const-string v0, "seat_layer"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->seat_layer:Ljava/lang/String;

    .line 225
    const-string v0, "cinema_name"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->cinema_name:Ljava/lang/String;

    .line 226
    const-string v0, "date"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->film_date:Ljava/lang/String;

    .line 227
    const-string v0, "time"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->film_time:Ljava/lang/String;

    .line 228
    const-string v0, "type"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->film_type:Ljava/lang/String;

    .line 229
    const-string v0, "film_name"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->film_name:Ljava/lang/String;

    .line 230
    const-string v0, "money"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->money:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->money:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->totalPrice:Ljava/lang/Float;

    .line 234
    const-string v0, "url"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, url:Ljava/lang/String;
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 236
    .local v3, img:Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iput-object v8, p0, Lcom/ub/main/movie/MovieBuy;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 238
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    const/16 v1, 0x2710

    .line 240
    const v4, 0x7f0200d2

    .line 242
    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    .line 238
    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 243
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->tasklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 244
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->tasklist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoading;->cancelLoading()V

    .line 248
    :cond_0
    iput-object v8, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    .line 249
    new-instance v0, Lcom/ub/main/net/ImageLoading;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->tasklist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ub/main/movie/MovieBuy;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, v4, v7}, Lcom/ub/main/net/ImageLoading;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    .line 250
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoading;->start()V

    .line 256
    .end local v2           #url:Ljava/lang/String;
    .end local v3           #img:Landroid/widget/ImageView;
    :cond_1
    sput-boolean v7, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 257
    sget-object v5, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_USER_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 258
    sget-object v0, Lcom/ub/main/util/NetConfig;->UID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatGetUserInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 259
    const-string v9, "\u6b63\u5728\u83b7\u53d6\u7528\u6237\u4fe1\u606f..."

    move-object v4, p0

    move-object v7, p0

    move-object v8, p0

    .line 257
    invoke-virtual/range {v4 .. v9}, Lcom/ub/main/movie/MovieBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private initView()V
    .locals 13

    .prologue
    const v12, 0x7f080056

    const v4, 0x7f0200d2

    const v11, 0x7f080111

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 264
    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->phoneView:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    sget-object v0, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    if-eqz v0, :cond_1

    .line 267
    sget-object v0, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->phoneView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ub/main/movie/MovieBuy;->totalPrice:Ljava/lang/Float;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ub/main/movie/MovieBuy;->totalPrice:Ljava/lang/Float;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->film_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->film_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    new-instance v7, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->film_time:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 281
    .local v7, time:Ljava/lang/StringBuffer;
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ub/main/movie/MovieBuy;->film_date:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x2

    const-string v6, ":"

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->cinema_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const v0, 0x7f08010b

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ub/main/movie/MovieBuy;->seat_list:Ljava/lang/String;

    const-string v6, ":"

    const-string v8, "\u6392"

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "|"

    const-string v8, "\u5ea7  "

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5ea7"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->head:Landroid/view/ViewGroup;

    .line 291
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->head:Landroid/view/ViewGroup;

    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->back:Landroid/widget/Button;

    .line 292
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->back:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->head:Landroid/view/ViewGroup;

    const v1, 0x7f080141

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->title1:Landroid/widget/TextView;

    .line 296
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->title1:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->title1:Landroid/widget/TextView;

    const-string v1, "\u8ba2\u5355\u652f\u4ed8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    if-eqz v0, :cond_6

    .line 303
    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v5}, Lcom/ub/main/data/Coupon;->getOldprice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "\uffe5"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v5}, Lcom/ub/main/data/Coupon;->getNewprice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-virtual {p0, v12}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const v0, 0x7f080057

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v1}, Lcom/ub/main/data/Coupon;->getChannel_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {p0, v11}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 311
    .local v3, imgview:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, url:Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 313
    iput-object v10, p0, Lcom/ub/main/movie/MovieBuy;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 314
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    const/16 v1, 0x2711

    .line 318
    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    .line 314
    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 319
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->tasklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 320
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->tasklist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoading;->cancelLoading()V

    .line 324
    :cond_2
    iput-object v10, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    .line 325
    new-instance v0, Lcom/ub/main/net/ImageLoading;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->tasklist:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ub/main/movie/MovieBuy;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, v5, v9}, Lcom/ub/main/net/ImageLoading;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    .line 326
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoading;->start()V

    .line 358
    .end local v2           #url:Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->promotion:Lcom/ub/main/data/Promotion;

    if-eqz v0, :cond_8

    .line 359
    const v0, 0x7f08010f

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 360
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->promotion:Lcom/ub/main/data/Promotion;

    invoke-virtual {v1}, Lcom/ub/main/data/Promotion;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {p0, v11}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->promotion:Lcom/ub/main/data/Promotion;

    invoke-virtual {v1}, Lcom/ub/main/data/Promotion;->getBrief()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {p0, v11}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #imgview:Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 365
    .restart local v3       #imgview:Landroid/widget/ImageView;
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    const v0, 0x7f0200d1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 367
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->promotion:Lcom/ub/main/data/Promotion;

    invoke-virtual {v0}, Lcom/ub/main/data/Promotion;->getIcon()Ljava/lang/String;

    move-result-object v2

    .line 368
    .restart local v2       #url:Ljava/lang/String;
    if-eqz v2, :cond_5

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 369
    iput-object v10, p0, Lcom/ub/main/movie/MovieBuy;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 370
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    const/16 v1, 0x2712

    .line 374
    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    .line 370
    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 375
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->tasklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 376
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->tasklist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoading;->cancelLoading()V

    .line 380
    :cond_4
    iput-object v10, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    .line 381
    new-instance v0, Lcom/ub/main/net/ImageLoading;

    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->tasklist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ub/main/movie/MovieBuy;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, v4, v9}, Lcom/ub/main/net/ImageLoading;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    .line 382
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->imageLoading:Lcom/ub/main/net/ImageLoading;

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoading;->start()V

    .line 404
    .end local v2           #url:Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 341
    .end local v3           #imgview:Landroid/widget/ImageView;
    :cond_6
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 343
    .restart local v3       #imgview:Landroid/widget/ImageView;
    iget-boolean v0, p0, Lcom/ub/main/movie/MovieBuy;->hasCoupon:Z

    if-eqz v0, :cond_7

    .line 344
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    const v0, 0x7f0200af

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 346
    invoke-virtual {p0, v12}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u4e0d\u4f7f\u7528\u4f18\u60e0\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_2
    invoke-virtual {p0, v11}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 348
    :cond_7
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 350
    invoke-virtual {p0, v12}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6ca1\u6709\u53ef\u4ee5\u4f7f\u7528\u7684\u4f18\u60e0\u5238"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 398
    :cond_8
    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #imgview:Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 399
    .restart local v3       #imgview:Landroid/widget/ImageView;
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 401
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u5f53\u524d\u6ca1\u6709\u4f18\u60e0\u6d3b\u52a8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {p0, v11}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private paySuccess()V
    .locals 3

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieBuy;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u6210\u529f,\u8ba2\u8d2d\u5f71\u7968\u4fe1\u606f\u5c06\u901a\u8fc7\u77ed\u4fe1\u53d1\u9001\u5230"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u624b\u673a\u4e0a\uff0c\u8bf7\u6ce8\u610f\u67e5\u6536\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 811
    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->phoneView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->phone:Ljava/lang/String;

    .line 814
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->setResult(I)V

    .line 815
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieBuy;->finish()V

    .line 839
    return-void
.end method

.method private reqestTicketsOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "cinemaCode"
    .parameter "planCode"
    .parameter "sid"
    .parameter "seatList"
    .parameter "seatLayer"
    .parameter "phone"
    .parameter "type"

    .prologue
    .line 709
    const-string v6, ""

    .line 710
    .local v6, couponId:Ljava/lang/String;
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v0}, Lcom/ub/main/data/Coupon;->getId()Ljava/lang/String;

    move-result-object v6

    .line 713
    :cond_0
    sget-object v8, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v7, p7

    .line 714
    invoke-static/range {v0 .. v7}, Lcom/ub/main/util/NetConfig;->createMovieOrderPostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 715
    const-string v5, "\u6b63\u5728\u4e0b\u5355..."

    move-object v0, p0

    move-object v1, v8

    move-object v3, p0

    move-object v4, p0

    .line 713
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/movie/MovieBuy;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 716
    return-void
.end method


# virtual methods
.method public BackClick(Landroid/view/View;)V
    .locals 1
    .parameter "btn"

    .prologue
    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->order_id:Ljava/lang/String;

    .line 491
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieBuy;->finish()V

    .line 492
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 493
    return-void
.end method

.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const v9, 0x7f08010e

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 845
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 846
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 847
    sput-boolean v6, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 850
    :cond_0
    const-string v3, "finish"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "activity finish state = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ub/main/movie/MovieBuy;->isFinishing()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieBuy;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 852
    const-string v3, "finish"

    const-string v4, "activity has finish , back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_1
    :goto_0
    return-void

    .line 855
    :cond_2
    const-string v3, "200"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 856
    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_BY_BALANCE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v3, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 859
    invoke-direct {p0}, Lcom/ub/main/movie/MovieBuy;->paySuccess()V

    .line 860
    sput-boolean v6, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 861
    sput-boolean v8, Lcom/ub/main/movie/MovieSeats;->isReConnect:Z

    goto :goto_0

    .line 862
    :cond_3
    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->PAY_BY_CARD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v3, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 863
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 864
    .local v1, orderCode:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/ub/main/movie/MovieBuy;->EPOSPayResultProcess(Ljava/lang/String;)V

    .line 865
    sput-boolean v6, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 866
    sput-boolean v8, Lcom/ub/main/movie/MovieSeats;->isReConnect:Z

    goto :goto_0

    .line 867
    .end local v1           #orderCode:Ljava/lang/String;
    :cond_4
    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->NOT_EXIST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v3, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 868
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 869
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 870
    const-string v4, "\u672a\u77e5\u9519\u8bef\uff01"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 871
    const-string v4, "\u786e\u5b9a"

    invoke-virtual {v3, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 872
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 873
    sput-boolean v6, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    goto :goto_0

    .line 874
    :cond_5
    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_USER_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v3, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 875
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->jsonObject:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/ub/main/util/NetConfig;->saveUserInfo(Lorg/json/JSONObject;)Lcom/ub/main/data/UserInfoBean;

    move-result-object v3

    sput-object v3, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 876
    sget-object v3, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    if-eqz v3, :cond_6

    .line 877
    sget-object v3, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v4, "pt_ActId"

    invoke-virtual {v3, v4}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 878
    new-instance v3, Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-direct {v3}, Lcom/ub/main/data/CreditCardAccountInfo;-><init>()V

    iput-object v3, p0, Lcom/ub/main/movie/MovieBuy;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    .line 879
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    sget-object v4, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v5, "pt_ActId"

    invoke-virtual {v4, v5}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ub/main/data/CreditCardAccountInfo;->setCardNumber(Ljava/lang/String;)V

    .line 881
    :cond_6
    invoke-direct {p0}, Lcom/ub/main/movie/MovieBuy;->initView()V

    .line 882
    invoke-direct {p0}, Lcom/ub/main/movie/MovieBuy;->getBestCoupon()V

    goto/16 :goto_0

    .line 883
    :cond_7
    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_BEST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v3, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 884
    const/4 v2, 0x0

    .line 885
    .local v2, temp:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "couponList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, p0, Lcom/ub/main/movie/MovieBuy;->jsonArray:Lorg/json/JSONArray;

    .line 886
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->jsonArray:Lorg/json/JSONArray;

    if-eqz v3, :cond_a

    .line 887
    new-instance v3, Lcom/ub/main/data/Coupon;

    invoke-direct {v3}, Lcom/ub/main/data/Coupon;-><init>()V

    iput-object v3, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    .line 888
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_8

    .line 908
    .end local v0           #i:I
    :goto_2
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "couponList"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "promotion"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 909
    if-eqz v2, :cond_b

    .line 910
    new-instance v3, Lcom/ub/main/data/Promotion;

    invoke-direct {v3}, Lcom/ub/main/data/Promotion;-><init>()V

    iput-object v3, p0, Lcom/ub/main/movie/MovieBuy;->promotion:Lcom/ub/main/data/Promotion;

    .line 911
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->promotion:Lcom/ub/main/data/Promotion;

    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ub/main/data/Promotion;->setTitle(Ljava/lang/String;)V

    .line 912
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->promotion:Lcom/ub/main/data/Promotion;

    const-string v4, "brief"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ub/main/data/Promotion;->setBrief(Ljava/lang/String;)V

    .line 913
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->promotion:Lcom/ub/main/data/Promotion;

    const-string v4, "icon"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ub/main/data/Promotion;->setIcon(Ljava/lang/String;)V

    .line 917
    :goto_3
    invoke-direct {p0}, Lcom/ub/main/movie/MovieBuy;->initView()V

    goto/16 :goto_0

    .line 889
    .restart local v0       #i:I
    :cond_8
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 890
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 891
    iput-object v7, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    .line 892
    iput-boolean v6, p0, Lcom/ub/main/movie/MovieBuy;->hasCoupon:Z

    .line 893
    invoke-virtual {p0, v9}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 888
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 895
    :cond_9
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ub/main/data/Coupon;->setTitle(Ljava/lang/String;)V

    .line 896
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v4, "channel"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ub/main/data/Coupon;->setChannel_id(Ljava/lang/String;)V

    .line 897
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ub/main/data/Coupon;->setId(Ljava/lang/String;)V

    .line 898
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v4, "oldPrice"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ub/main/data/Coupon;->setOldprice(Ljava/lang/String;)V

    .line 899
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v4, "newPrice"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ub/main/data/Coupon;->setNewprice(Ljava/lang/String;)V

    .line 900
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v4, "icon"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ub/main/data/Coupon;->setIcon(Ljava/lang/String;)V

    .line 901
    iput-boolean v8, p0, Lcom/ub/main/movie/MovieBuy;->hasCoupon:Z

    .line 902
    invoke-virtual {p0, v9}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 906
    .end local v0           #i:I
    :cond_a
    iput-object v7, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    goto/16 :goto_2

    .line 915
    :cond_b
    iput-object v7, p0, Lcom/ub/main/movie/MovieBuy;->promotion:Lcom/ub/main/data/Promotion;

    goto :goto_3

    .line 967
    .end local v2           #temp:Lorg/json/JSONObject;
    :cond_c
    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v3, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 970
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "order_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ub/main/movie/MovieBuy;->order_id:Ljava/lang/String;

    .line 971
    invoke-direct {p0}, Lcom/ub/main/movie/MovieBuy;->doPay()V

    goto/16 :goto_0

    .line 974
    :cond_d
    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_BEST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v3, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 975
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieBuy;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u6682\u65f6\u6ca1\u6709\u4f18\u60e0\u5238\u53ef\u4ee5\u4f7f\u7528"

    invoke-static {v3, v4}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 976
    :cond_e
    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_ORDER:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v3, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 977
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 978
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 979
    invoke-virtual {v3, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 980
    const-string v4, "\u786e\u5b9a"

    new-instance v5, Lcom/ub/main/movie/MovieBuy$9;

    invoke-direct {v5, p0}, Lcom/ub/main/movie/MovieBuy$9;-><init>(Lcom/ub/main/movie/MovieBuy;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 985
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 987
    :cond_f
    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->YOUHUI_BEST:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v3, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 988
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieBuy;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public ImageLoaded(Lcom/ub/main/net/ImageLoadingTaskInfo;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 1003
    iget v0, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    packed-switch v0, :pswitch_data_0

    .line 1017
    :goto_0
    return-void

    .line 1005
    :pswitch_0
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->movieImg:Landroid/widget/ImageView;

    .line 1006
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->movieImg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1009
    :pswitch_1
    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->couponImg:Landroid/widget/ImageView;

    .line 1010
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->couponImg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1013
    :pswitch_2
    const v0, 0x7f080110

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->actImg:Landroid/widget/ImageView;

    .line 1014
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->actImg:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1003
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public MobileEdit(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 723
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 724
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f03001c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 725
    .local v1, textEntryView:Landroid/view/View;
    const v3, 0x7f0800a0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 726
    .local v2, txt:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/ub/main/movie/MovieBuy;->phoneView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 727
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 728
    const-string v4, "\u66f4\u6362\u63a5\u6536\u624b\u673a\u53f7"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 729
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 730
    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/ub/main/movie/MovieBuy$7;

    invoke-direct {v5, p0}, Lcom/ub/main/movie/MovieBuy$7;-><init>(Lcom/ub/main/movie/MovieBuy;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 736
    const-string v4, "\u786e\u5b9a"

    new-instance v5, Lcom/ub/main/movie/MovieBuy$8;

    invoke-direct {v5, p0, v2}, Lcom/ub/main/movie/MovieBuy$8;-><init>(Lcom/ub/main/movie/MovieBuy;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 752
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 753
    return-void
.end method

.method public XYKClick(Landroid/view/View;)V
    .locals 3
    .parameter "btn"

    .prologue
    .line 430
    sget-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    if-nez v0, :cond_1

    .line 432
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 433
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->account:Lcom/ub/main/data/CreditCardAccountInfo;

    invoke-virtual {v0}, Lcom/ub/main/data/CreditCardAccountInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 435
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 436
    const-string v1, "\u60a8\u672a\u7ed1\u5b9a\u4fe1\u7528\u5361,\u8bf7\u53bb\u8d26\u6237\u7ba1\u7406\u9875\u7ed1\u5b9a\u4fe1\u7528\u5361!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 437
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/movie/MovieBuy$2;

    invoke-direct {v2, p0}, Lcom/ub/main/movie/MovieBuy$2;-><init>(Lcom/ub/main/movie/MovieBuy;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/ub/main/movie/MovieBuy;->pay_type:I

    .line 449
    const-string v0, "3"

    invoke-direct {p0, v0}, Lcom/ub/main/movie/MovieBuy;->doOrder(Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    goto :goto_0
.end method

.method public YEClick(Landroid/view/View;)V
    .locals 2
    .parameter "btn"

    .prologue
    const/4 v1, 0x0

    .line 462
    sget-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 465
    iput v1, p0, Lcom/ub/main/movie/MovieBuy;->pay_type:I

    .line 467
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/ub/main/movie/MovieBuy;->doOrder(Ljava/lang/String;)V

    .line 469
    sput-boolean v1, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 472
    :cond_0
    return-void
.end method

.method public YouHuiClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 760
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 761
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "sid"

    iget-object v2, p0, Lcom/ub/main/movie/MovieBuy;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v1, "pid"

    iget-object v2, p0, Lcom/ub/main/movie/MovieBuy;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v1, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    if-eqz v1, :cond_1

    .line 765
    const-string v1, "couponId"

    iget-object v2, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    invoke-virtual {v2}, Lcom/ub/main/data/Coupon;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :goto_0
    iget-boolean v1, p0, Lcom/ub/main/movie/MovieBuy;->hasCoupon:Z

    if-eqz v1, :cond_0

    .line 770
    const-class v1, Lcom/ub/main/coupon/CouponList;

    invoke-static {p0, v1, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 772
    :cond_0
    return-void

    .line 767
    :cond_1
    const-string v1, "couponId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ZFClick(Landroid/view/View;)V
    .locals 2
    .parameter "btn"

    .prologue
    const/4 v1, 0x1

    .line 412
    sget-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    if-nez v0, :cond_0

    .line 414
    sput-boolean v1, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 416
    iput v1, p0, Lcom/ub/main/movie/MovieBuy;->pay_type:I

    .line 418
    const-string v0, "2"

    invoke-direct {p0, v0}, Lcom/ub/main/movie/MovieBuy;->doOrder(Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 422
    :cond_0
    return-void
.end method

.method public ZHClick(Landroid/view/View;)V
    .locals 0
    .parameter "btn"

    .prologue
    .line 482
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 777
    packed-switch p1, :pswitch_data_0

    .line 794
    :goto_0
    return-void

    .line 779
    :pswitch_0
    if-nez p3, :cond_0

    .line 780
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    .line 790
    :goto_1
    invoke-direct {p0}, Lcom/ub/main/movie/MovieBuy;->initView()V

    goto :goto_0

    .line 782
    :cond_0
    new-instance v0, Lcom/ub/main/data/Coupon;

    invoke-direct {v0}, Lcom/ub/main/data/Coupon;-><init>()V

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    .line 783
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v1, "title"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ub/main/data/Coupon;->setTitle(Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v1, "channel"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ub/main/data/Coupon;->setChannel_id(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v1, "id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ub/main/data/Coupon;->setId(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v1, "oldprice"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ub/main/data/Coupon;->setOldprice(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v1, "newprice"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ub/main/data/Coupon;->setNewprice(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->coupon:Lcom/ub/main/data/Coupon;

    const-string v1, "icon"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ub/main/data/Coupon;->setIcon(Ljava/lang/String;)V

    goto :goto_1

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 700
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 706
    :goto_0
    return-void

    .line 703
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->BackClick(Landroid/view/View;)V

    goto :goto_0

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x7f080142
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->requestWindowFeature(I)Z

    .line 116
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->setContentView(I)V

    .line 118
    invoke-direct {p0}, Lcom/ub/main/movie/MovieBuy;->initData()V

    .line 119
    invoke-direct {p0}, Lcom/ub/main/movie/MovieBuy;->initView()V

    .line 121
    const-string v0, "LIFE"

    const-string v1, "buy activity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 648
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 651
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/ub/main/movie/MovieBuy;->alixManager:Lcom/ub/main/util/alipay/AlixMainManager;

    invoke-virtual {v0}, Lcom/ub/main/util/alipay/AlixMainManager;->closeProgress()V

    .line 655
    :cond_0
    invoke-static {p0}, Lcom/ub/main/net/ImageLoading;->clearCacheImage(Landroid/content/Context;)V

    .line 656
    const-string v0, "LIFE"

    const-string v1, "buy activity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 663
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 664
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieBuy;->BackClick(Landroid/view/View;)V

    .line 665
    const/4 v0, 0x1

    .line 667
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onPause()V

    .line 127
    const-string v0, "LIFE"

    const-string v1, "buy activity onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 693
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 694
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/movie/MovieBuy;->order_id:Ljava/lang/String;

    .line 696
    const-string v0, "LIFE"

    const-string v1, "buy activity onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-void
.end method

.method public payResultHandler(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "payChannelID"
    .parameter "behavorID"
    .parameter "param"
    .parameter "ObjectParam"

    .prologue
    .line 629
    packed-switch p1, :pswitch_data_0

    .line 644
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/movie/MovieBuy;->blIsOver:Z

    .line 645
    return-void

    .line 631
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 635
    :pswitch_2
    invoke-direct {p0}, Lcom/ub/main/movie/MovieBuy;->paySuccess()V

    goto :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 631
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
