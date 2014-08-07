.class public Lcom/ub/main/foodsale/FoodQuHuo;
.super Lcom/ub/main/BaseActivity;
.source "FoodQuHuo.java"


# static fields
.field private static GET_PRODUCT_TIME_MAX:I


# instance fields
.field private backButton:Landroid/widget/Button;

.field private bar:Landroid/widget/ProgressBar;

.field private blIsrun:Z

.field private getType:Z

.field private handler:Landroid/os/Handler;

.field private head:Landroid/view/ViewGroup;

.field private iStep:I

.field private iTime:I

.field private imageView:Landroid/widget/ImageView;

.field private isGet:Z

.field orderId:Ljava/lang/String;

.field pid:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;

.field private timeView:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field titleName:Ljava/lang/String;

.field vmid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0xa

    sput v0, Lcom/ub/main/foodsale/FoodQuHuo;->GET_PRODUCT_TIME_MAX:I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 57
    sget v0, Lcom/ub/main/foodsale/FoodQuHuo;->GET_PRODUCT_TIME_MAX:I

    iput v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->iTime:I

    .line 164
    new-instance v0, Lcom/ub/main/foodsale/FoodQuHuo$1;

    invoke-direct {v0, p0}, Lcom/ub/main/foodsale/FoodQuHuo$1;-><init>(Lcom/ub/main/foodsale/FoodQuHuo;)V

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/foodsale/FoodQuHuo;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->timeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/foodsale/FoodQuHuo;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->iTime:I

    return v0
.end method

.method static synthetic access$2(Lcom/ub/main/foodsale/FoodQuHuo;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->bar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ub/main/foodsale/FoodQuHuo;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->iStep:I

    return v0
.end method

.method static synthetic access$4(Lcom/ub/main/foodsale/FoodQuHuo;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->isGet:Z

    return v0
.end method

.method static synthetic access$5(Lcom/ub/main/foodsale/FoodQuHuo;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodQuHuo;->backDo()V

    return-void
.end method

.method static synthetic access$6(Lcom/ub/main/foodsale/FoodQuHuo;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->blIsrun:Z

    return v0
.end method

.method static synthetic access$7(Lcom/ub/main/foodsale/FoodQuHuo;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/ub/main/foodsale/FoodQuHuo;->iTime:I

    return-void
.end method

.method static synthetic access$8(Lcom/ub/main/foodsale/FoodQuHuo;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ub/main/foodsale/FoodQuHuo;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/ub/main/foodsale/FoodQuHuo;->blIsrun:Z

    return-void
.end method

.method private backDo()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodQuHuo;->stopTimeThread()V

    .line 256
    return-void
.end method

.method private getProduct()V
    .locals 6

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->orderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->orderId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_FOOD_GETGOODS:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 230
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->pid:Ljava/lang/String;

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodQuHuo;->vmid:Ljava/lang/String;

    iget-object v4, p0, Lcom/ub/main/foodsale/FoodQuHuo;->orderId:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->getType:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_1
    invoke-static {v2, v3, v4, v0}, Lcom/ub/main/util/NetConfig;->createFOOD_foodGetGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 229
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/foodsale/FoodQuHuo;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_2
    const-string v0, "2"

    goto :goto_1
.end method

.method private stopTimeThread()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/foodsale/FoodQuHuo;->blIsrun:Z

    .line 162
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 260
    const-string v0, "200"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    sget-object v0, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_FOOD_GETGOODS:Lcom/ub/main/util/NetConfig$HttpRequestId;

    if-ne p1, v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodQuHuo;->stopTimeThread()V

    .line 273
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodQuHuo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u8d27\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->DisplayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodQuHuo;->finish()V

    .line 301
    :goto_0
    return-void

    .line 289
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 292
    const-string v1, "\u786e\u5b9a"

    .line 293
    new-instance v2, Lcom/ub/main/foodsale/FoodQuHuo$4;

    invoke-direct {v2, p0}, Lcom/ub/main/foodsale/FoodQuHuo$4;-><init>(Lcom/ub/main/foodsale/FoodQuHuo;)V

    .line 292
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public OnDestroy()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 157
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodQuHuo;->stopTimeThread()V

    .line 158
    return-void
.end method

.method public OnPause()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onPause()V

    .line 152
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodQuHuo;->stopTimeThread()V

    .line 153
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodQuHuo;->setContentView(I)V

    .line 92
    const v2, 0x7f080016

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodQuHuo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->head:Landroid/view/ViewGroup;

    .line 93
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->head:Landroid/view/ViewGroup;

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->backButton:Landroid/widget/Button;

    .line 94
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->backButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->backButton:Landroid/widget/Button;

    new-instance v3, Lcom/ub/main/foodsale/FoodQuHuo$2;

    invoke-direct {v3, p0}, Lcom/ub/main/foodsale/FoodQuHuo$2;-><init>(Lcom/ub/main/foodsale/FoodQuHuo;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->head:Landroid/view/ViewGroup;

    const v3, 0x7f0800e7

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->title:Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    const v2, 0x7f0800ad

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodQuHuo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->timeView:Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->timeView:Landroid/widget/TextView;

    iget v3, p0, Lcom/ub/main/foodsale/FoodQuHuo;->iTime:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v2, 0x7f0800ac

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodQuHuo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->imageView:Landroid/widget/ImageView;

    .line 109
    sget v2, Lcom/ub/main/foodsale/FoodQuHuo;->GET_PRODUCT_TIME_MAX:I

    iput v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->iTime:I

    .line 110
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->blIsrun:Z

    .line 111
    iput-boolean v4, p0, Lcom/ub/main/foodsale/FoodQuHuo;->isGet:Z

    .line 112
    const v2, 0x7f0800af

    invoke-virtual {p0, v2}, Lcom/ub/main/foodsale/FoodQuHuo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->bar:Landroid/widget/ProgressBar;

    .line 113
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->bar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodQuHuo;->bar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 114
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->bar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    sget v3, Lcom/ub/main/foodsale/FoodQuHuo;->GET_PRODUCT_TIME_MAX:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->iStep:I

    .line 115
    new-instance v2, Lcom/ub/main/foodsale/FoodQuHuo$3;

    invoke-direct {v2, p0}, Lcom/ub/main/foodsale/FoodQuHuo$3;-><init>(Lcom/ub/main/foodsale/FoodQuHuo;)V

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->thread:Ljava/lang/Thread;

    .line 136
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 138
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodQuHuo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 139
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 140
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "vmid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->vmid:Ljava/lang/String;

    .line 141
    const-string v2, "pid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->pid:Ljava/lang/String;

    .line 142
    const-string v2, "order_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->orderId:Ljava/lang/String;

    .line 144
    const-string v2, "productName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->titleName:Ljava/lang/String;

    .line 145
    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->getType:Z

    .line 146
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ub/main/foodsale/FoodQuHuo;->titleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodQuHuo;->getProduct()V

    .line 148
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 238
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/ub/main/foodsale/FoodQuHuo;->backDo()V

    .line 240
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodQuHuo;->finish()V

    .line 241
    const/4 v0, 0x1

    .line 243
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
    .line 207
    :goto_0
    iget-boolean v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->blIsrun:Z

    if-nez v2, :cond_0

    .line 221
    return-void

    .line 208
    :cond_0
    iget v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->iTime:I

    if-lez v2, :cond_1

    .line 209
    iget v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->iTime:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->iTime:I

    .line 210
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 211
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x66

    iput v2, v1, Landroid/os/Message;->what:I

    .line 212
    iget-object v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    .end local v1           #msg:Landroid/os/Message;
    :goto_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ub/main/foodsale/FoodQuHuo;->blIsrun:Z

    goto :goto_1
.end method
