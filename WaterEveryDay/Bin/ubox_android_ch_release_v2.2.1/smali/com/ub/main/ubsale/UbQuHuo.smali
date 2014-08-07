.class public Lcom/ub/main/ubsale/UbQuHuo;
.super Lcom/ub/main/BaseActivity;
.source "UbQuHuo.java"


# static fields
.field private static GET_PRODUCT_TIME_MAX:I


# instance fields
.field private backButton:Landroid/widget/Button;

.field private bar:Landroid/widget/ProgressBar;

.field private blIsrun:Z

.field private handler:Landroid/os/Handler;

.field private head:Landroid/view/ViewGroup;

.field private iStep:I

.field private iTime:I

.field id:I

.field private imageView:Landroid/widget/ImageView;

.field private isCouponBuy:Z

.field private isGet:Z

.field private order:[Ljava/lang/String;

.field private thread:Ljava/lang/Thread;

.field private timeView:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0xa

    sput v0, Lcom/ub/main/ubsale/UbQuHuo;->GET_PRODUCT_TIME_MAX:I

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 60
    sget v0, Lcom/ub/main/ubsale/UbQuHuo;->GET_PRODUCT_TIME_MAX:I

    iput v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->iTime:I

    .line 80
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    .line 86
    const/16 v0, 0x66

    iput v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->id:I

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->isCouponBuy:Z

    .line 182
    new-instance v0, Lcom/ub/main/ubsale/UbQuHuo$1;

    invoke-direct {v0, p0}, Lcom/ub/main/ubsale/UbQuHuo$1;-><init>(Lcom/ub/main/ubsale/UbQuHuo;)V

    iput-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->handler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/ubsale/UbQuHuo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->timeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/ubsale/UbQuHuo;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->iTime:I

    return v0
.end method

.method static synthetic access$10(Lcom/ub/main/ubsale/UbQuHuo;)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->isCouponBuy:Z

    return v0
.end method

.method static synthetic access$2(Lcom/ub/main/ubsale/UbQuHuo;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->bar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ub/main/ubsale/UbQuHuo;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->iStep:I

    return v0
.end method

.method static synthetic access$4(Lcom/ub/main/ubsale/UbQuHuo;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->isGet:Z

    return v0
.end method

.method static synthetic access$5(Lcom/ub/main/ubsale/UbQuHuo;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbQuHuo;->backDo()V

    return-void
.end method

.method static synthetic access$6(Lcom/ub/main/ubsale/UbQuHuo;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->blIsrun:Z

    return v0
.end method

.method static synthetic access$7(Lcom/ub/main/ubsale/UbQuHuo;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/ub/main/ubsale/UbQuHuo;->iTime:I

    return-void
.end method

.method static synthetic access$8(Lcom/ub/main/ubsale/UbQuHuo;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ub/main/ubsale/UbQuHuo;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/ub/main/ubsale/UbQuHuo;->blIsrun:Z

    return-void
.end method

.method private backDo()V
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->isCouponBuy:Z

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbQuHuo;->finish()V

    .line 268
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/coupon/CouponHome;->needUpdate:Z

    .line 274
    :goto_0
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbQuHuo;->stopTimeThread()V

    .line 282
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/coupon/CouponHome;->needUpdate:Z

    .line 271
    const-class v0, Lcom/ub/main/Hall;

    invoke-static {p0, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private getProduct()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    .line 242
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    aget-object v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_UBOX_PRODUCT:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 247
    iget-object v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/ub/main/util/NetConfig;->creatGetProductPostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 246
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/UbQuHuo;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopTimeThread()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/ubsale/UbQuHuo;->blIsrun:Z

    .line 180
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 286
    const-string v2, "200"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 287
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, code:I
    if-nez v0, :cond_3

    .line 289
    sget-object v2, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_UBOX_PRODUCT:Lcom/ub/main/util/NetConfig$HttpRequestId;

    if-ne p1, v2, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbQuHuo;->stopTimeThread()V

    .line 291
    sget-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 292
    const-string v3, "balance"

    invoke-virtual {v2, v3}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 293
    .local v1, yue:F
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    .line 294
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 295
    const/4 v1, 0x0

    .line 296
    :cond_0
    sget-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 297
    const-string v3, "balance"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-virtual {v2, v3, v4}, Lcom/ub/main/data/UserInfoBean;->setKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->isGet:Z

    .line 299
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbQuHuo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u53d6\u8d27\u6210\u529f\uff01"

    invoke-static {v2, v3}, Lcom/ub/main/util/Tool;->DisplayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    .end local v1           #yue:F
    :cond_1
    iget-boolean v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->isCouponBuy:Z

    if-nez v2, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbQuHuo;->finish()V

    .line 339
    .end local v0           #code:I
    :goto_0
    return-void

    .line 304
    .restart local v0       #code:I
    :cond_2
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbQuHuo;->backDo()V

    goto :goto_0

    .line 307
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 309
    sget-object v3, Lcom/ub/main/util/UIConfig;->GET_PRODUCT_MSG:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 310
    const-string v3, "\u786e\u5b9a"

    .line 311
    new-instance v4, Lcom/ub/main/ubsale/UbQuHuo$5;

    invoke-direct {v4, p0}, Lcom/ub/main/ubsale/UbQuHuo$5;-><init>(Lcom/ub/main/ubsale/UbQuHuo;)V

    .line 310
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 323
    .end local v0           #code:I
    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 325
    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u5982\u679c\u6ca1\u6709\u6389\u8d27\uff0c\u652f\u4ed8\u91d1\u989d\u5c06\u8fd4\u8fd8\u5230\u60a8\u7684\u8d26\u6237\u4f59\u989d\u3002"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 326
    const-string v3, "\u786e\u5b9a"

    .line 327
    new-instance v4, Lcom/ub/main/ubsale/UbQuHuo$6;

    invoke-direct {v4, p0}, Lcom/ub/main/ubsale/UbQuHuo$6;-><init>(Lcom/ub/main/ubsale/UbQuHuo;)V

    .line 326
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public OnDestroy()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 175
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbQuHuo;->stopTimeThread()V

    .line 176
    return-void
.end method

.method public OnPause()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onPause()V

    .line 170
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbQuHuo;->stopTimeThread()V

    .line 171
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v2, 0x7f030049

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/UbQuHuo;->setContentView(I)V

    .line 97
    const v2, 0x7f080016

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/UbQuHuo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->head:Landroid/view/ViewGroup;

    .line 98
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->head:Landroid/view/ViewGroup;

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->backButton:Landroid/widget/Button;

    .line 100
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbQuHuo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 101
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    const-string v3, "vmid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 103
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    const-string v3, "pid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 104
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "order_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 105
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "price"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 106
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "title"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 107
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    const-string v3, "productName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 108
    const-string v2, "inputtype"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->isCouponBuy:Z

    .line 110
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->head:Landroid/view/ViewGroup;

    const v3, 0x7f0800e7

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->title:Landroid/widget/TextView;

    .line 111
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbQuHuo;->order:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->backButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-boolean v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->isCouponBuy:Z

    if-nez v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->backButton:Landroid/widget/Button;

    new-instance v3, Lcom/ub/main/ubsale/UbQuHuo$2;

    invoke-direct {v3, p0}, Lcom/ub/main/ubsale/UbQuHuo$2;-><init>(Lcom/ub/main/ubsale/UbQuHuo;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :goto_0
    const v2, 0x7f0800ad

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/UbQuHuo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->timeView:Landroid/widget/TextView;

    .line 132
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->timeView:Landroid/widget/TextView;

    iget v3, p0, Lcom/ub/main/ubsale/UbQuHuo;->iTime:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v2, 0x7f0800ac

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/UbQuHuo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->imageView:Landroid/widget/ImageView;

    .line 135
    sget v2, Lcom/ub/main/ubsale/UbQuHuo;->GET_PRODUCT_TIME_MAX:I

    iput v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->iTime:I

    .line 136
    iput-boolean v6, p0, Lcom/ub/main/ubsale/UbQuHuo;->blIsrun:Z

    .line 137
    iput-boolean v5, p0, Lcom/ub/main/ubsale/UbQuHuo;->isGet:Z

    .line 138
    const v2, 0x7f0800af

    invoke-virtual {p0, v2}, Lcom/ub/main/ubsale/UbQuHuo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->bar:Landroid/widget/ProgressBar;

    .line 139
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->bar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbQuHuo;->bar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 140
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->bar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    sget v3, Lcom/ub/main/ubsale/UbQuHuo;->GET_PRODUCT_TIME_MAX:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->iStep:I

    .line 141
    new-instance v2, Lcom/ub/main/ubsale/UbQuHuo$4;

    invoke-direct {v2, p0}, Lcom/ub/main/ubsale/UbQuHuo$4;-><init>(Lcom/ub/main/ubsale/UbQuHuo;)V

    iput-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->thread:Ljava/lang/Thread;

    .line 162
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 165
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbQuHuo;->getProduct()V

    .line 166
    return-void

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->backButton:Landroid/widget/Button;

    new-instance v3, Lcom/ub/main/ubsale/UbQuHuo$3;

    invoke-direct {v3, p0}, Lcom/ub/main/ubsale/UbQuHuo$3;-><init>(Lcom/ub/main/ubsale/UbQuHuo;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 255
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbQuHuo;->backDo()V

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 225
    :goto_0
    iget-boolean v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->blIsrun:Z

    if-nez v2, :cond_0

    .line 239
    return-void

    .line 226
    :cond_0
    iget v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->iTime:I

    if-lez v2, :cond_1

    .line 227
    iget v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->iTime:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->iTime:I

    .line 228
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 229
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x66

    iput v2, v1, Landroid/os/Message;->what:I

    .line 230
    iget-object v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    .end local v1           #msg:Landroid/os/Message;
    :goto_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ub/main/ubsale/UbQuHuo;->blIsrun:Z

    goto :goto_1
.end method
