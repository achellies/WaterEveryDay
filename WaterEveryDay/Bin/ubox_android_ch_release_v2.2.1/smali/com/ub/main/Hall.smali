.class public Lcom/ub/main/Hall;
.super Landroid/app/ActivityGroup;
.source "Hall.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/ub/main/net/IHttpObserver;


# instance fields
.field private containerFrameLayout:Landroid/widget/FrameLayout;

.field private counterBtn:Landroid/widget/ImageButton;

.field private couponBtn:Landroid/widget/ImageButton;

.field private couponNotice:Landroid/widget/TextView;

.field private feet:Landroid/view/ViewGroup;

.field private head:Landroid/view/ViewGroup;

.field private orderBtn:Landroid/widget/ImageButton;

.field private saleBtn:Landroid/widget/ImageButton;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ub/main/Hall;->saleBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iget-object v0, p0, Lcom/ub/main/Hall;->couponBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object v0, p0, Lcom/ub/main/Hall;->orderBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v0, p0, Lcom/ub/main/Hall;->counterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    return-void
.end method

.method private initModel()V
    .locals 5

    .prologue
    .line 113
    const-class v2, Lcom/ub/main/ShopOnline;

    invoke-direct {p0, v2}, Lcom/ub/main/Hall;->loadingView(Ljava/lang/Class;)V

    .line 114
    iget-object v2, p0, Lcom/ub/main/Hall;->saleBtn:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 116
    new-instance v0, Lcom/ub/main/net/HttpHandler;

    invoke-virtual {p0}, Lcom/ub/main/Hall;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/ub/main/net/HttpHandler;-><init>(Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;)V

    .line 117
    .local v0, httpHandler:Lcom/ub/main/net/HttpHandler;
    new-instance v1, Lcom/ub/main/net/HttpStack;

    invoke-virtual {p0}, Lcom/ub/main/Hall;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_USER_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 118
    sget-object v4, Lcom/ub/main/util/NetConfig;->UID:Ljava/lang/String;

    invoke-static {v4}, Lcom/ub/main/util/NetConfig;->creatGetUserInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ub/main/net/HttpStack;-><init>(Landroid/content/Context;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Lcom/ub/main/net/HttpHandler;)V

    .line 120
    .local v1, httpStack:Lcom/ub/main/net/HttpStack;
    invoke-virtual {v1}, Lcom/ub/main/net/HttpStack;->start()V

    .line 121
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 92
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/ub/main/Hall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ub/main/Hall;->head:Landroid/view/ViewGroup;

    .line 93
    iget-object v0, p0, Lcom/ub/main/Hall;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/Hall;->title:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/ub/main/Hall;->title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/ub/main/Hall;->title:Landroid/widget/TextView;

    const-string v1, "\u53cb\u5b9d\u5728\u7ebf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/ub/main/Hall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ub/main/Hall;->feet:Landroid/view/ViewGroup;

    .line 98
    iget-object v0, p0, Lcom/ub/main/Hall;->feet:Landroid/view/ViewGroup;

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ub/main/Hall;->saleBtn:Landroid/widget/ImageButton;

    .line 99
    iget-object v0, p0, Lcom/ub/main/Hall;->feet:Landroid/view/ViewGroup;

    const v1, 0x7f0800a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ub/main/Hall;->couponBtn:Landroid/widget/ImageButton;

    .line 100
    iget-object v0, p0, Lcom/ub/main/Hall;->feet:Landroid/view/ViewGroup;

    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ub/main/Hall;->orderBtn:Landroid/widget/ImageButton;

    .line 101
    iget-object v0, p0, Lcom/ub/main/Hall;->feet:Landroid/view/ViewGroup;

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ub/main/Hall;->counterBtn:Landroid/widget/ImageButton;

    .line 102
    iget-object v0, p0, Lcom/ub/main/Hall;->feet:Landroid/view/ViewGroup;

    const v1, 0x7f0800a6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/Hall;->couponNotice:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/ub/main/Hall;->couponNotice:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Lcom/ub/main/Hall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ub/main/Hall;->containerFrameLayout:Landroid/widget/FrameLayout;

    .line 106
    return-void
.end method

.method private loadingView(Ljava/lang/Class;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, loadClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/ub/main/Hall;->containerFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 214
    iget-object v0, p0, Lcom/ub/main/Hall;->containerFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ub/main/Hall;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    .line 215
    const-string v2, ""

    .line 216
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ub/main/Hall;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 219
    return-void
.end method


# virtual methods
.method public HttpResponseError(Lcom/ub/main/net/IHttpObserver$HttpErrorCode;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/ub/main/Hall;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef\uff01"

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public HttpResponseOk(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;)V
    .locals 9
    .parameter "requestId"
    .parameter "responseJsonString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 313
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 314
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v5, "head"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 315
    .local v1, header:Lorg/json/JSONObject;
    const-string v5, "Hall"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HttpResponse--------"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v5, "Hall"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HttpResponse--------"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, stateCode:Ljava/lang/String;
    const-string v5, "message"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, message:Ljava/lang/String;
    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    invoke-static {v2}, Lcom/ub/main/util/NetConfig;->saveUserInfo(Lorg/json/JSONObject;)Lcom/ub/main/data/UserInfoBean;

    move-result-object v5

    sput-object v5, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 321
    sget-object v5, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v6, "coupon_nums"

    invoke-virtual {v5, v6}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, couponNum:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 323
    iget-object v5, p0, Lcom/ub/main/Hall;->couponNotice:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    .end local v0           #couponNum:Ljava/lang/String;
    :goto_0
    return-void

    .line 325
    .restart local v0       #couponNum:Ljava/lang/String;
    :cond_0
    sput-boolean v8, Lcom/ub/main/util/UIConfig;->ISRIGISTERINTER:Z

    .line 326
    iget-object v5, p0, Lcom/ub/main/Hall;->couponNotice:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v5, p0, Lcom/ub/main/Hall;->couponNotice:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 330
    .end local v0           #couponNum:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/ub/main/Hall;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/Hall;->requestWindowFeature(I)Z

    .line 80
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/ub/main/Hall;->setContentView(I)V

    .line 82
    invoke-direct {p0}, Lcom/ub/main/Hall;->initView()V

    .line 83
    invoke-direct {p0}, Lcom/ub/main/Hall;->initModel()V

    .line 84
    invoke-direct {p0}, Lcom/ub/main/Hall;->initControl()V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 185
    iput-object v0, p0, Lcom/ub/main/Hall;->head:Landroid/view/ViewGroup;

    .line 186
    iput-object v0, p0, Lcom/ub/main/Hall;->title:Landroid/widget/TextView;

    .line 187
    iput-object v0, p0, Lcom/ub/main/Hall;->feet:Landroid/view/ViewGroup;

    .line 188
    iput-object v0, p0, Lcom/ub/main/Hall;->saleBtn:Landroid/widget/ImageButton;

    .line 189
    iput-object v0, p0, Lcom/ub/main/Hall;->couponBtn:Landroid/widget/ImageButton;

    .line 190
    iput-object v0, p0, Lcom/ub/main/Hall;->orderBtn:Landroid/widget/ImageButton;

    .line 191
    iput-object v0, p0, Lcom/ub/main/Hall;->counterBtn:Landroid/widget/ImageButton;

    .line 192
    iput-object v0, p0, Lcom/ub/main/Hall;->containerFrameLayout:Landroid/widget/FrameLayout;

    .line 193
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 194
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 287
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/ub/main/Hall;->quit()V

    .line 289
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 138
    if-eqz p1, :cond_0

    const-string v2, "loginGoto"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "loginGoto"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    const-class v2, Lcom/ub/main/ShopOnline;

    invoke-direct {p0, v2}, Lcom/ub/main/Hall;->loadingView(Ljava/lang/Class;)V

    .line 140
    iget-object v2, p0, Lcom/ub/main/Hall;->saleBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 141
    iget-object v2, p0, Lcom/ub/main/Hall;->title:Landroid/widget/TextView;

    const-string v3, "\u53cb\u5b9d\u5728\u7ebf"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/ub/main/Hall;->saleBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 143
    iget-object v2, p0, Lcom/ub/main/Hall;->couponBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 144
    iget-object v2, p0, Lcom/ub/main/Hall;->orderBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 145
    iget-object v2, p0, Lcom/ub/main/Hall;->counterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 146
    new-instance v0, Lcom/ub/main/net/HttpHandler;

    invoke-virtual {p0}, Lcom/ub/main/Hall;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/ub/main/net/HttpHandler;-><init>(Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;)V

    .line 147
    .local v0, httpHandler:Lcom/ub/main/net/HttpHandler;
    new-instance v1, Lcom/ub/main/net/HttpStack;

    invoke-virtual {p0}, Lcom/ub/main/Hall;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_USER_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 148
    sget-object v4, Lcom/ub/main/util/NetConfig;->UID:Ljava/lang/String;

    invoke-static {v4}, Lcom/ub/main/util/NetConfig;->creatGetUserInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ub/main/net/HttpStack;-><init>(Landroid/content/Context;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Lcom/ub/main/net/HttpHandler;)V

    .line 150
    .local v1, httpStack:Lcom/ub/main/net/HttpStack;
    invoke-virtual {v1}, Lcom/ub/main/net/HttpStack;->start()V

    .line 152
    .end local v0           #httpHandler:Lcom/ub/main/net/HttpHandler;
    .end local v1           #httpStack:Lcom/ub/main/net/HttpStack;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 206
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 159
    invoke-virtual {p0}, Lcom/ub/main/Hall;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 160
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    const-string v3, "login"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "login"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 162
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v3, Lcom/ub/main/login/LoginUI;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v2}, Lcom/ub/main/Hall;->startActivity(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Lcom/ub/main/Hall;->finish()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    sget-boolean v3, Lcom/ub/main/util/UIConfig;->ISRIGISTERINTER:Z

    if-eqz v3, :cond_0

    .line 167
    new-instance v0, Lcom/ub/main/net/HttpHandler;

    invoke-virtual {p0}, Lcom/ub/main/Hall;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/ub/main/net/HttpHandler;-><init>(Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;)V

    .line 168
    .local v0, httpHandler:Lcom/ub/main/net/HttpHandler;
    new-instance v1, Lcom/ub/main/net/HttpStack;

    invoke-virtual {p0}, Lcom/ub/main/Hall;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_USER_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 169
    sget-object v5, Lcom/ub/main/util/NetConfig;->UID:Ljava/lang/String;

    invoke-static {v5}, Lcom/ub/main/util/NetConfig;->creatGetUserInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-direct {v1, v3, v4, v5, v0}, Lcom/ub/main/net/HttpStack;-><init>(Landroid/content/Context;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Lcom/ub/main/net/HttpHandler;)V

    .line 171
    .local v1, httpStack:Lcom/ub/main/net/HttpStack;
    invoke-virtual {v1}, Lcom/ub/main/net/HttpStack;->start()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 200
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 179
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 223
    sget-boolean v0, Lcom/ub/main/util/UIConfig;->isLoading:Z

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return v3

    .line 225
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 250
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 252
    :pswitch_2
    iget-object v0, p0, Lcom/ub/main/Hall;->title:Landroid/widget/TextView;

    const-string v1, "\u53cb\u5b9d\u5728\u7ebf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/ub/main/Hall;->saleBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 254
    iget-object v0, p0, Lcom/ub/main/Hall;->couponBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 255
    iget-object v0, p0, Lcom/ub/main/Hall;->orderBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 256
    iget-object v0, p0, Lcom/ub/main/Hall;->counterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v0, p0, Lcom/ub/main/Hall;->saleBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    const-class v0, Lcom/ub/main/ShopOnline;

    invoke-direct {p0, v0}, Lcom/ub/main/Hall;->loadingView(Ljava/lang/Class;)V

    goto :goto_1

    .line 233
    :pswitch_4
    iget-object v0, p0, Lcom/ub/main/Hall;->couponBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/ub/main/Hall;->couponNotice:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    const-class v0, Lcom/ub/main/coupon/CouponHome;

    invoke-direct {p0, v0}, Lcom/ub/main/Hall;->loadingView(Ljava/lang/Class;)V

    goto :goto_1

    .line 239
    :pswitch_5
    iget-object v0, p0, Lcom/ub/main/Hall;->orderBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    const-class v0, Lcom/ub/main/order/OrderHome;

    invoke-direct {p0, v0}, Lcom/ub/main/Hall;->loadingView(Ljava/lang/Class;)V

    goto :goto_1

    .line 244
    :pswitch_6
    iget-object v0, p0, Lcom/ub/main/Hall;->counterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    const-class v0, Lcom/ub/main/account/AccountMain;

    invoke-direct {p0, v0}, Lcom/ub/main/Hall;->loadingView(Ljava/lang/Class;)V

    goto :goto_1

    .line 259
    :pswitch_7
    iget-object v0, p0, Lcom/ub/main/Hall;->title:Landroid/widget/TextView;

    const-string v1, "\u4f18\u60e0\u5238\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/ub/main/Hall;->couponBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 261
    iget-object v0, p0, Lcom/ub/main/Hall;->saleBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 262
    iget-object v0, p0, Lcom/ub/main/Hall;->orderBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 263
    iget-object v0, p0, Lcom/ub/main/Hall;->counterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_0

    .line 266
    :pswitch_8
    iget-object v0, p0, Lcom/ub/main/Hall;->title:Landroid/widget/TextView;

    const-string v1, "\u8ba2\u5355\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/ub/main/Hall;->orderBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 268
    iget-object v0, p0, Lcom/ub/main/Hall;->saleBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 269
    iget-object v0, p0, Lcom/ub/main/Hall;->couponBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 270
    iget-object v0, p0, Lcom/ub/main/Hall;->counterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_0

    .line 273
    :pswitch_9
    iget-object v0, p0, Lcom/ub/main/Hall;->title:Landroid/widget/TextView;

    const-string v1, "\u8d26\u6237\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/ub/main/Hall;->counterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 275
    iget-object v0, p0, Lcom/ub/main/Hall;->saleBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 276
    iget-object v0, p0, Lcom/ub/main/Hall;->couponBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 277
    iget-object v0, p0, Lcom/ub/main/Hall;->orderBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x7f0800a4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 250
    :pswitch_data_1
    .packed-switch 0x7f0800a4
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public quit()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4f60\u786e\u5b9a\u8981\u79bb\u5f00?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 300
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ub/main/Hall$1;

    invoke-direct {v2, p0}, Lcom/ub/main/Hall$1;-><init>(Lcom/ub/main/Hall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 305
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ub/main/Hall$2;

    invoke-direct {v2, p0}, Lcom/ub/main/Hall$2;-><init>(Lcom/ub/main/Hall;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 309
    return-void
.end method
