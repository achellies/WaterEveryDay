.class public Lcom/ub/main/account/AccountDetail;
.super Lcom/ub/main/BaseActivity;
.source "AccountDetail.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountDetail"

.field private static final pageSize:I = 0xa


# instance fields
.field private adapter:Lcom/ub/main/adapter/ListAdapter7;

.field private back:Landroid/widget/Button;

.field private head:Landroid/widget/FrameLayout;

.field private line:Landroid/widget/TextView;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private moreButton:Landroid/widget/Button;

.field private pageIndex:I

.field private title:Landroid/widget/TextView;

.field protected totalnum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/account/AccountDetail;->list:Ljava/util/List;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/ub/main/account/AccountDetail;->pageIndex:I

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/account/AccountDetail;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/account/AccountDetail;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/ub/main/account/AccountDetail;->pageIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/ub/main/account/AccountDetail;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/ub/main/account/AccountDetail;->pageIndex:I

    return-void
.end method

.method static synthetic access$3(Lcom/ub/main/account/AccountDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/ub/main/account/AccountDetail;->loadInComeList()V

    return-void
.end method

.method static synthetic access$4(Lcom/ub/main/account/AccountDetail;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->moreButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ub/main/account/AccountDetail;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->line:Landroid/widget/TextView;

    return-object v0
.end method

.method private getData()Ljava/util/List;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->list:Ljava/util/List;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/ub/main/account/AccountDetail;->head:Landroid/widget/FrameLayout;

    .line 104
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->head:Landroid/widget/FrameLayout;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/account/AccountDetail;->back:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->back:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->head:Landroid/widget/FrameLayout;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/account/AccountDetail;->title:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->title:Landroid/widget/TextView;

    const-string v1, "\u6536\u652f\u660e\u7ec6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->back:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/account/AccountDetail$1;

    invoke-direct {v1, p0}, Lcom/ub/main/account/AccountDetail$1;-><init>(Lcom/ub/main/account/AccountDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/account/AccountDetail;->line:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/account/AccountDetail;->moreButton:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->moreButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->moreButton:Landroid/widget/Button;

    new-instance v1, Lcom/ub/main/account/AccountDetail$2;

    invoke-direct {v1, p0}, Lcom/ub/main/account/AccountDetail$2;-><init>(Lcom/ub/main/account/AccountDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ub/main/account/AccountDetail;->listView:Landroid/widget/ListView;

    .line 137
    new-instance v0, Lcom/ub/main/adapter/ListAdapter7;

    invoke-direct {v0, p0}, Lcom/ub/main/adapter/ListAdapter7;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ub/main/account/AccountDetail;->adapter:Lcom/ub/main/adapter/ListAdapter7;

    .line 138
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->adapter:Lcom/ub/main/adapter/ListAdapter7;

    invoke-direct {p0}, Lcom/ub/main/account/AccountDetail;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ub/main/adapter/ListAdapter7;->setData(Ljava/util/List;)V

    .line 139
    iget-object v0, p0, Lcom/ub/main/account/AccountDetail;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ub/main/account/AccountDetail;->adapter:Lcom/ub/main/adapter/ListAdapter7;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    return-void
.end method

.method private loadInComeList()V
    .locals 6

    .prologue
    .line 91
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->INCOM_DETAIL:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/ub/main/account/AccountDetail;->pageIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "10"

    invoke-static {v0, v2}, Lcom/ub/main/util/NetConfig;->createGetOrderListString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/account/AccountDetail;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 94
    return-void
.end method


# virtual methods
.method public BackTolastActivity(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/ub/main/account/AccountDetail;->finish()V

    .line 231
    return-void
.end method

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
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 236
    const-string v5, "200"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 237
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->jsonObject:Lorg/json/JSONObject;

    const-string v6, "orderList"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 238
    .local v3, orderListObj:Lorg/json/JSONObject;
    const-string v5, "data_count"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, dataCount:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/ub/main/account/AccountDetail;->totalnum:I

    .line 240
    :cond_0
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 242
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/ub/main/account/AccountDetail;->jsonArray:Lorg/json/JSONArray;

    .line 245
    :cond_1
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->jsonArray:Lorg/json/JSONArray;

    if-eqz v5, :cond_2

    .line 246
    const/4 v4, 0x0

    .line 247
    .local v4, orderObj:Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_3

    .line 271
    .end local v2           #i:I
    .end local v4           #orderObj:Lorg/json/JSONObject;
    :cond_2
    iget v5, p0, Lcom/ub/main/account/AccountDetail;->totalnum:I

    iget-object v6, p0, Lcom/ub/main/account/AccountDetail;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-le v5, v6, :cond_4

    .line 272
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->moreButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->line:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    :goto_1
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->adapter:Lcom/ub/main/adapter/ListAdapter7;

    invoke-virtual {v5}, Lcom/ub/main/adapter/ListAdapter7;->notifyDataSetChanged()V

    .line 289
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #dataCount:Ljava/lang/String;
    .end local v3           #orderListObj:Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 248
    .restart local v0       #data:Ljava/lang/String;
    .restart local v1       #dataCount:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #orderListObj:Lorg/json/JSONObject;
    .restart local v4       #orderObj:Lorg/json/JSONObject;
    :cond_3
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 249
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/ub/main/account/AccountDetail;->map:Ljava/util/Map;

    .line 250
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->map:Ljava/util/Map;

    const-string v6, "name"

    const-string v7, "seller_name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->map:Ljava/util/Map;

    const-string v6, "time"

    const-string v7, "trade_time"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->map:Ljava/util/Map;

    const-string v6, "type"

    const-string v7, "trade_type"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->map:Ljava/util/Map;

    const-string v6, "money"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\uffe5"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "amount"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->list:Ljava/util/List;

    iget-object v6, p0, Lcom/ub/main/account/AccountDetail;->map:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/ub/main/account/AccountDetail;->map:Ljava/util/Map;

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v2           #i:I
    .end local v4           #orderObj:Lorg/json/JSONObject;
    :cond_4
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->moreButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    iget-object v5, p0, Lcom/ub/main/account/AccountDetail;->line:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 280
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #dataCount:Ljava/lang/String;
    .end local v3           #orderListObj:Lorg/json/JSONObject;
    :cond_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    const-string v6, "\u63d0\u793a"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 282
    invoke-virtual {v5, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 283
    const-string v6, "\u786e\u5b9a"

    new-instance v7, Lcom/ub/main/account/AccountDetail$3;

    invoke-direct {v7, p0}, Lcom/ub/main/account/AccountDetail$3;-><init>(Lcom/ub/main/account/AccountDetail;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 287
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountDetail;->requestWindowFeature(I)Z

    .line 85
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountDetail;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/ub/main/account/AccountDetail;->initView()V

    .line 87
    invoke-direct {p0}, Lcom/ub/main/account/AccountDetail;->loadInComeList()V

    .line 88
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 212
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/ub/main/account/AccountDetail;->finish()V

    .line 214
    const/4 v0, 0x1

    .line 216
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

    .line 223
    invoke-virtual {p0}, Lcom/ub/main/account/AccountDetail;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    :cond_0
    return v1
.end method
