.class public Lcom/ub/main/ubsale/UbNumber;
.super Lcom/ub/main/BaseActivity;
.source "UbNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private backBtn:Landroid/widget/Button;

.field private coupon_Id:Ljava/lang/String;

.field private head:Landroid/view/ViewGroup;

.field private input:Landroid/widget/EditText;

.field private title:Landroid/widget/TextView;

.field private uboxIsCoupon:Z

.field private uboxOrFoodSale:Z

.field private yes_bt:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/ub/main/ubsale/UbNumber;->uboxOrFoodSale:Z

    .line 64
    iput-boolean v0, p0, Lcom/ub/main/ubsale/UbNumber;->uboxIsCoupon:Z

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/ubsale/UbNumber;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->input:Landroid/widget/EditText;

    return-object v0
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->backBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->input:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 140
    iget-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->yes_bt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method private initModel()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbNumber;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 88
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 91
    const-string v3, "foodsale"

    const-string v4, "type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ub/main/ubsale/UbNumber;->uboxOrFoodSale:Z

    .line 92
    const-string v3, "coupon_buy"

    const-string v4, "type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ub/main/ubsale/UbNumber;->uboxIsCoupon:Z

    .line 93
    iget-boolean v3, p0, Lcom/ub/main/ubsale/UbNumber;->uboxIsCoupon:Z

    if-eqz v3, :cond_0

    .line 94
    sget-object v3, Lcom/ub/main/util/Tool;->COUPONID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ub/main/ubsale/UbNumber;->coupon_Id:Ljava/lang/String;

    .line 101
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    const v3, 0x7f080016

    invoke-virtual {p0, v3}, Lcom/ub/main/ubsale/UbNumber;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/ub/main/ubsale/UbNumber;->head:Landroid/view/ViewGroup;

    .line 102
    iget-object v3, p0, Lcom/ub/main/ubsale/UbNumber;->head:Landroid/view/ViewGroup;

    const v4, 0x7f0800e7

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ub/main/ubsale/UbNumber;->title:Landroid/widget/TextView;

    .line 103
    iget-object v3, p0, Lcom/ub/main/ubsale/UbNumber;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v3, p0, Lcom/ub/main/ubsale/UbNumber;->title:Landroid/widget/TextView;

    const-string v4, "\u8f93\u5165\u7f16\u53f7"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v3, p0, Lcom/ub/main/ubsale/UbNumber;->head:Landroid/view/ViewGroup;

    const v4, 0x7f0800ed

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/ub/main/ubsale/UbNumber;->backBtn:Landroid/widget/Button;

    .line 106
    iget-object v3, p0, Lcom/ub/main/ubsale/UbNumber;->backBtn:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    const v3, 0x7f08017c

    invoke-virtual {p0, v3}, Lcom/ub/main/ubsale/UbNumber;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/ub/main/ubsale/UbNumber;->input:Landroid/widget/EditText;

    .line 109
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/text/InputFilter;

    .line 110
    .local v1, filter:[Landroid/text/InputFilter;
    new-instance v3, Lcom/ub/main/ubsale/UbNumber$1;

    const/16 v4, 0xa

    invoke-direct {v3, p0, v4}, Lcom/ub/main/ubsale/UbNumber$1;-><init>(Lcom/ub/main/ubsale/UbNumber;I)V

    aput-object v3, v1, v5

    .line 122
    iget-object v3, p0, Lcom/ub/main/ubsale/UbNumber;->input:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 124
    const v3, 0x7f08017d

    invoke-virtual {p0, v3}, Lcom/ub/main/ubsale/UbNumber;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/ub/main/ubsale/UbNumber;->yes_bt:Landroid/widget/Button;

    .line 125
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 190
    const-string v1, "200"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "id"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbNumber;->input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "address"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "get"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 196
    iget-boolean v1, p0, Lcom/ub/main/ubsale/UbNumber;->uboxOrFoodSale:Z

    if-eqz v1, :cond_0

    .line 197
    const-class v1, Lcom/ub/main/foodsale/FoodProduct;

    invoke-static {p0, v1, v3, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 213
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 199
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    const-class v1, Lcom/ub/main/ubsale/UbProduct;

    invoke-static {p0, v1, v3, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 202
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 204
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 205
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/ub/main/ubsale/UbNumber$2;

    invoke-direct {v3, p0}, Lcom/ub/main/ubsale/UbNumber$2;-><init>(Lcom/ub/main/ubsale/UbNumber;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 290
    invoke-super {p0, p1, p2, p3}, Lcom/ub/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 291
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 292
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3}, Lcom/ub/main/ubsale/UbNumber;->setResult(ILandroid/content/Intent;)V

    .line 293
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbNumber;->finish()V

    .line 295
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800ed

    if-ne v0, v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbNumber;->finish()V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08017d

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, input_number:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/ub/main/ubsale/UbNumber;->uboxOrFoodSale:Z

    if-eqz v0, :cond_2

    .line 268
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETVMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 269
    invoke-static {v7}, Lcom/ub/main/util/NetConfig;->creatGetUBoxMachineInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 268
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/UbNumber;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->coupon_Id:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->coupon_Id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v6, bundle:Landroid/os/Bundle;
    sget-object v0, Lcom/ub/main/util/Tool;->COUPONID:Ljava/lang/String;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbNumber;->coupon_Id:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/ub/main/util/Tool;->VMID:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-class v0, Lcom/ub/main/ubsale/Coupon_UbBuy;

    invoke-static {p0, v0, v6}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 278
    .end local v6           #bundle:Landroid/os/Bundle;
    :cond_3
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_VMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 279
    invoke-static {v7}, Lcom/ub/main/util/NetConfig;->creatGetUBoxMachineInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 278
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/UbNumber;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/ub/main/ubsale/UbNumber;->setContentView(I)V

    .line 76
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbNumber;->initView()V

    .line 77
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbNumber;->initModel()V

    .line 78
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbNumber;->initControl()V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 147
    iput-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->head:Landroid/view/ViewGroup;

    .line 148
    iput-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->title:Landroid/widget/TextView;

    .line 149
    iput-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->backBtn:Landroid/widget/Button;

    .line 150
    iput-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->input:Landroid/widget/EditText;

    .line 151
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, input_number:Ljava/lang/String;
    iget-object v0, p0, Lcom/ub/main/ubsale/UbNumber;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 221
    const-string v1, "\u8f93\u5165\u7684\u7f16\u53f7\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 222
    const-string v1, "\u786e\u5b9a"

    .line 223
    new-instance v2, Lcom/ub/main/ubsale/UbNumber$3;

    invoke-direct {v2, p0}, Lcom/ub/main/ubsale/UbNumber$3;-><init>(Lcom/ub/main/ubsale/UbNumber;)V

    .line 222
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 252
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 229
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 230
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 232
    const-string v1, "\u6ca1\u6709\u8be5\u552e\u8d27\u673a\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 233
    const-string v1, "\u786e\u5b9a"

    .line 234
    new-instance v2, Lcom/ub/main/ubsale/UbNumber$4;

    invoke-direct {v2, p0}, Lcom/ub/main/ubsale/UbNumber$4;-><init>(Lcom/ub/main/ubsale/UbNumber;)V

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 241
    :cond_2
    iget-boolean v0, p0, Lcom/ub/main/ubsale/UbNumber;->uboxOrFoodSale:Z

    if-eqz v0, :cond_3

    .line 242
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->FOOD_UOBX_GETVMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 243
    invoke-static {v6}, Lcom/ub/main/util/NetConfig;->creatGetUBoxMachineInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 242
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/UbNumber;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_3
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_VMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 247
    invoke-static {v6}, Lcom/ub/main/util/NetConfig;->creatGetUBoxMachineInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 246
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/UbNumber;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 179
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbNumber;->finish()V

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onPause()V

    .line 169
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 163
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onStart()V

    .line 157
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onStop()V

    .line 175
    return-void
.end method
