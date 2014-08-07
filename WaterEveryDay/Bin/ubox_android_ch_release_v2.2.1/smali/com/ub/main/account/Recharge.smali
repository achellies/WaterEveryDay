.class public Lcom/ub/main/account/Recharge;
.super Lcom/ub/main/BaseActivity;
.source "Recharge.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ub/main/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemainMan"


# instance fields
.field private back:Landroid/widget/Button;

.field private btRecharge:Landroid/widget/Button;

.field private head:Landroid/view/ViewGroup;

.field private textView1:Landroid/widget/TextView;

.field private textView2:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    return-void
.end method

.method private SendReChargeRequest()V
    .locals 5

    .prologue
    .line 237
    new-instance v0, Lcom/ub/main/net/HttpHandler;

    invoke-virtual {p0}, Lcom/ub/main/account/Recharge;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/ub/main/net/HttpHandler;-><init>(Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;)V

    .line 238
    .local v0, httpHandler:Lcom/ub/main/net/HttpHandler;
    new-instance v1, Lcom/ub/main/net/HttpStack;

    invoke-virtual {p0}, Lcom/ub/main/account/Recharge;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/ub/main/util/NetConfig$HttpRequestId;->RECHARGE:Lcom/ub/main/util/NetConfig$HttpRequestId;

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ub/main/net/HttpStack;-><init>(Landroid/content/Context;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Lcom/ub/main/net/HttpHandler;)V

    .line 240
    .local v1, httpStack:Lcom/ub/main/net/HttpStack;
    invoke-virtual {v1}, Lcom/ub/main/net/HttpStack;->start()V

    .line 241
    return-void
.end method

.method private initModel()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/ub/main/account/Recharge;->test()V

    .line 71
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/ub/main/account/Recharge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ub/main/account/Recharge;->head:Landroid/view/ViewGroup;

    .line 90
    iget-object v0, p0, Lcom/ub/main/account/Recharge;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/account/Recharge;->back:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lcom/ub/main/account/Recharge;->back:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/ub/main/account/Recharge;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/account/Recharge;->title:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/ub/main/account/Recharge;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/ub/main/account/Recharge;->title:Landroid/widget/TextView;

    const-string v1, "\u53cb \u5b9d \u94b1 \u5305"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Lcom/ub/main/account/Recharge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/account/Recharge;->textView1:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/ub/main/account/Recharge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/account/Recharge;->textView2:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/ub/main/account/Recharge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/account/Recharge;->btRecharge:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/ub/main/account/Recharge;->btRecharge:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/ub/main/account/Recharge;->back:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/account/Recharge$1;

    invoke-direct {v1, p0}, Lcom/ub/main/account/Recharge$1;-><init>(Lcom/ub/main/account/Recharge;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method private showDialog()V
    .locals 6

    .prologue
    .line 180
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 181
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f03001b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 182
    .local v1, textEntryView:Landroid/view/View;
    const v3, 0x7f0800a0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 183
    .local v2, txt:Landroid/widget/EditText;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 185
    const-string v4, "\u5145\u503c\u91d1\u989d"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 186
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 187
    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/ub/main/account/Recharge$2;

    invoke-direct {v5, p0}, Lcom/ub/main/account/Recharge$2;-><init>(Lcom/ub/main/account/Recharge;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 193
    const-string v4, "\u4f59\u989d\u5145\u503c"

    new-instance v5, Lcom/ub/main/account/Recharge$3;

    invoke-direct {v5, p0, v2}, Lcom/ub/main/account/Recharge$3;-><init>(Lcom/ub/main/account/Recharge;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 222
    return-void
.end method

.method private test()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ub/main/account/Recharge;->putAccount(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v1, "balance"

    invoke-virtual {v0, v1}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ub/main/account/Recharge;->putRemain(Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public BackTolastActivity(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/ub/main/account/Recharge;->finish()V

    .line 165
    return-void
.end method

.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 247
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3}, Lcom/ub/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 228
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/ub/main/account/Recharge;->finish()V

    .line 231
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 170
    :pswitch_0
    invoke-direct {p0}, Lcom/ub/main/account/Recharge;->showDialog()V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x7f080026
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/ub/main/account/Recharge;->setContentView(I)V

    .line 54
    invoke-direct {p0}, Lcom/ub/main/account/Recharge;->initView()V

    .line 55
    invoke-direct {p0}, Lcom/ub/main/account/Recharge;->initModel()V

    .line 57
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 121
    :pswitch_0
    const-string v0, "RemainMan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++listView1++-> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :pswitch_1
    const-string v0, "RemainMan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++listView2++-> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :pswitch_2
    const-string v0, "RemainMan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++listView3++-> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :pswitch_3
    const-string v0, "RemainMan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++listView4++-> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :pswitch_4
    const-string v0, "RemainMan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++listView5++-> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x7f080030
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 149
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/ub/main/account/Recharge;->finish()V

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/ub/main/account/Recharge;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    :cond_0
    return v1
.end method

.method public putAccount(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ub/main/account/Recharge;->textView1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public putRemain(Ljava/lang/String;)V
    .locals 3
    .parameter "remain"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ub/main/account/Recharge;->textView2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method
