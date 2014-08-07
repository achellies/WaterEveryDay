.class public Lcom/ub/main/uplus/UBoxPlusCouponSelect;
.super Lcom/ub/main/BaseActivity;
.source "UBoxPlusCouponSelect.java"


# instance fields
.field private adapter:Lcom/ub/main/adapter/UPlusCouponListAdapter;

.field private appId:Ljava/lang/String;

.field private back:Landroid/widget/Button;

.field private couponList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private couponSelectList:Landroid/widget/ListView;

.field private head:Landroid/view/ViewGroup;

.field private headTitle_1:Landroid/widget/TextView;

.field private isExchange:Ljava/lang/String;

.field private templateId:Ljava/lang/String;

.field private templateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->appId:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->templateId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->isExchange:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)Lcom/ub/main/adapter/UPlusCouponListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->adapter:Lcom/ub/main/adapter/UPlusCouponListAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->templateList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ub/main/uplus/UBoxPlusCouponSelect;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->templateId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method private initControl()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->back:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/uplus/UBoxPlusCouponSelect$1;

    invoke-direct {v1, p0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect$1;-><init>(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->couponSelectList:Landroid/widget/ListView;

    new-instance v1, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;

    invoke-direct {v1, p0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect$2;-><init>(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    return-void
.end method

.method private initModel()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->UPLUS_GET_APP_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 73
    new-array v0, v5, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "device_no"

    aput-object v3, v2, v4

    invoke-static {}, Lcom/ub/main/util/UIConfig;->getPHONE_MAC_ADDRESS()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ub/main/util/Tool;->UTFCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatHttpProtocolPostString([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4f18\u60e0\u5238\u5217\u8868..."

    move-object v0, p0

    move-object v4, p0

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 77
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "app_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->appId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 82
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->head:Landroid/view/ViewGroup;

    .line 83
    iget-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->head:Landroid/view/ViewGroup;

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->back:Landroid/widget/Button;

    .line 84
    iget-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->head:Landroid/view/ViewGroup;

    const v3, 0x7f0800ea

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->headTitle_1:Landroid/widget/TextView;

    .line 85
    iget-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->head:Landroid/view/ViewGroup;

    const v3, 0x7f0800eb

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    .local v0, headTitle_2:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->head:Landroid/view/ViewGroup;

    const v3, 0x7f0800ec

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    .local v1, headTitle_3:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->back:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->head:Landroid/view/ViewGroup;

    const v3, 0x7f0800e9

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->title:Landroid/view/View;

    .line 90
    iget-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->title:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->headTitle_1:Landroid/widget/TextView;

    const-string v3, "\u4f18\u60e0\u5238\u9009\u62e9"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    const v2, 0x7f08008e

    invoke-virtual {p0, v2}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->couponSelectList:Landroid/widget/ListView;

    .line 96
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 137
    const-string v7, "200"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 139
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    const-string v8, "\u5151\u6362\u5931\u8d25"

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 141
    invoke-virtual {v7, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 142
    const-string v8, "\u786e\u5b9a"

    invoke-virtual {v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget-object v7, Lcom/ub/main/util/NetConfig$HttpRequestId;->UPLUS_GET_APP_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    if-ne p1, v7, :cond_4

    .line 146
    iget-object v7, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->jsonObject:Lorg/json/JSONObject;

    const-string v8, "template_list"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 147
    .local v0, array:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 148
    .local v5, templateId:Ljava/lang/String;
    const/4 v6, 0x0

    .line 149
    .local v6, templateTitle:Ljava/lang/String;
    const/4 v4, 0x0

    .line 150
    .local v4, templateIcon:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 151
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->couponList:Ljava/util/ArrayList;

    .line 152
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->templateList:Ljava/util/ArrayList;

    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, couponnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 155
    .local v1, arrayData:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v3, v7, :cond_2

    .line 167
    new-instance v7, Lcom/ub/main/adapter/UPlusCouponListAdapter;

    iget-object v8, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->couponList:Ljava/util/ArrayList;

    invoke-direct {v7, p0, v8}, Lcom/ub/main/adapter/UPlusCouponListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v7, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->adapter:Lcom/ub/main/adapter/UPlusCouponListAdapter;

    .line 168
    iget-object v7, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->adapter:Lcom/ub/main/adapter/UPlusCouponListAdapter;

    invoke-virtual {v7}, Lcom/ub/main/adapter/UPlusCouponListAdapter;->notifyDataSetChanged()V

    .line 169
    iget-object v7, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->couponSelectList:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->adapter:Lcom/ub/main/adapter/UPlusCouponListAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v7, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->couponSelectList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0

    .line 156
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #couponnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 157
    .restart local v2       #couponnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 158
    const-string v7, "template_id"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 159
    const-string v7, "icon_url"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    const-string v7, "template_title"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    const-string v7, "templateTitle"

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v7, "templateIcon"

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v7, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->couponList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v7, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->templateList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v7, "\u4f18\u60e0\u5238\u540d\u5b57+\u56fe\u7247url"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    .end local v1           #arrayData:Lorg/json/JSONObject;
    .end local v2           #couponnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "\u4f18\u60e0\u5238\u5217\u8868\u4e3a\u7a7a"

    invoke-static {v7, v8}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v4           #templateIcon:Ljava/lang/String;
    .end local v5           #templateId:Ljava/lang/String;
    .end local v6           #templateTitle:Ljava/lang/String;
    :cond_4
    sget-object v7, Lcom/ub/main/util/NetConfig$HttpRequestId;->UPLUS_CREATE_COUPON:Lcom/ub/main/util/NetConfig$HttpRequestId;

    if-ne p1, v7, :cond_0

    .line 175
    iget-object v7, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->jsonObject:Lorg/json/JSONObject;

    const-string v8, "status"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->isExchange:Ljava/lang/String;

    .line 176
    iget-object v7, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->isExchange:Ljava/lang/String;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 177
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    const-string v8, "\u5151\u6362\u6210\u529f"

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 179
    iget-object v8, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "msg"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 180
    const-string v8, "\u786e\u5b9a"

    new-instance v9, Lcom/ub/main/uplus/UBoxPlusCouponSelect$3;

    invoke-direct {v9, p0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect$3;-><init>(Lcom/ub/main/uplus/UBoxPlusCouponSelect;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 189
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 191
    :cond_5
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    const-string v8, "\u5151\u6362\u5931\u8d25"

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 193
    iget-object v8, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "msg"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 194
    const-string v8, "\u786e\u5b9a"

    invoke-virtual {v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->setContentView(I)V

    .line 65
    invoke-direct {p0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->initModel()V

    .line 66
    invoke-direct {p0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->initView()V

    .line 67
    invoke-direct {p0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->initControl()V

    .line 68
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 236
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->isExchange:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->isExchange:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->setResult(I)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/ub/main/uplus/UBoxPlusCouponSelect;->finish()V

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
