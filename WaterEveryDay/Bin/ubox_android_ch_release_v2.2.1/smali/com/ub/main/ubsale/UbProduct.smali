.class public Lcom/ub/main/ubsale/UbProduct;
.super Lcom/ub/main/BaseActivity;
.source "UbProduct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/ub/main/ubsale/UbProductAdapter;

.field private address:Landroid/widget/TextView;

.field private backBtn:Landroid/widget/Button;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private head:Landroid/view/ViewGroup;

.field private listView:Landroid/widget/ListView;

.field private machine:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private row:[Ljava/util/Map;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

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
    .line 33
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->dataList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->tasklist:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Lcom/ub/main/ubsale/UbProduct$1;

    invoke-direct {v0, p0}, Lcom/ub/main/ubsale/UbProduct$1;-><init>(Lcom/ub/main/ubsale/UbProduct;)V

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 33
    return-void
.end method

.method private back()V
    .locals 5

    .prologue
    .line 305
    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 308
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "vmid"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v4, "vmId"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v3, "title"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v3, "address"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v4, "address"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v3, "distence"

    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v4, "distence"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 313
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/ub/main/ubsale/UbProduct;->setResult(ILandroid/content/Intent;)V

    .line 315
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbProduct;->finish()V

    .line 316
    return-void
.end method

.method private getData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 159
    return-void

    .line 144
    :cond_0
    new-array v2, v5, [Ljava/util/Map;

    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    .line 145
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-lt v1, v5, :cond_1

    .line 157
    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->dataList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    .line 147
    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v3, "title"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v3, "price"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v3, "smallImg"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v3, "bigmig"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v3, "num"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v3, "id"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v3, "icon"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v3, "soldout"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    iget-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    aput-object v3, v2, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private gotoBuy(I)V
    .locals 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 338
    sget-boolean v3, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    if-eqz v3, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->dataList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 341
    div-int/lit8 v2, p1, 0x3

    .line 342
    .local v2, rowIndex:I
    rem-int/lit8 v1, p1, 0x3

    .line 343
    .local v1, colIndex:I
    iput-object v4, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    .line 344
    iget-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Map;

    iput-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    .line 345
    iput-object v4, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    .line 346
    iget-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    .line 348
    iget-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v4, "vmId"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v4, "vmId"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    :cond_2
    sput-boolean v6, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    goto :goto_0

    .line 351
    :cond_3
    iget-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v4, "num"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 352
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 354
    const-string v4, "\u5f53\u524d\u7269\u54c1\u5df2\u552e\u5b8c\uff01"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 355
    const-string v4, "\u786e\u5b9a"

    .line 356
    new-instance v5, Lcom/ub/main/ubsale/UbProduct$3;

    invoke-direct {v5, p0}, Lcom/ub/main/ubsale/UbProduct$3;-><init>(Lcom/ub/main/ubsale/UbProduct;)V

    .line 355
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 359
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 360
    sput-boolean v6, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    goto :goto_0

    .line 362
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "vmid"

    iget-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v5, "vmId"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v4, "title"

    iget-object v3, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v3, "pid"

    iget-object v4, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v5, "id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v3, "price"

    iget-object v4, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v5, "price"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v3, "productName"

    iget-object v4, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v5, "title"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v3, "urls"

    iget-object v4, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v5, "bigmig"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-class v3, Lcom/ub/main/ubsale/UbBuy;

    const/4 v4, 0x5

    invoke-static {p0, v3, v4, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 370
    const/4 v0, 0x0

    .line 371
    const/4 v3, 0x1

    sput-boolean v3, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    goto/16 :goto_0
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->backBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method private initModel()V
    .locals 7

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbProduct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 118
    .local v6, bundel:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->title:Landroid/widget/TextView;

    const-string v1, "title"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    .line 122
    const-string v0, "UbProduct"

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->TAG:Ljava/lang/String;

    .line 123
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_VMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 124
    const-string v0, "id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatGetUBoxMachineInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 123
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/UbProduct;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    .line 129
    const/4 v6, 0x0

    .line 130
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/ub/main/ubsale/UbProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->head:Landroid/view/ViewGroup;

    .line 100
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->title:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->backBtn:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->backBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/ub/main/ubsale/UbProduct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->listView:Landroid/widget/ListView;

    .line 107
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbProduct;->getData()V

    .line 108
    new-instance v0, Lcom/ub/main/ubsale/UbProductAdapter;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->dataList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/ub/main/ubsale/UbProductAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->adapter:Lcom/ub/main/ubsale/UbProductAdapter;

    .line 109
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->adapter:Lcom/ub/main/ubsale/UbProductAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v0, p0, Lcom/ub/main/ubsale/UbProduct;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 111
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

    .line 215
    const-string v6, "200"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 216
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 217
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "vmInfo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 219
    .local v2, infoObject:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v7, "vmId"

    const-string v8, "vmId"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v7, "name"

    const-string v8, "vmName"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v7, "address"

    const-string v8, "address"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v7, "distence"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v7, p0, Lcom/ub/main/ubsale/UbProduct;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    const-string v8, "name"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const-string v6, "lstShangpin4Alipay"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, array:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->jsonArray:Lorg/json/JSONArray;

    .line 228
    const/4 v0, 0x0

    .line 229
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 230
    const/4 v4, 0x0

    .line 231
    .local v4, temp:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 232
    .local v5, url:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 266
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->adapter:Lcom/ub/main/ubsale/UbProductAdapter;

    iget-object v7, p0, Lcom/ub/main/ubsale/UbProduct;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v5}, Lcom/ub/main/ubsale/UbProductAdapter;->setData(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 267
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->adapter:Lcom/ub/main/ubsale/UbProductAdapter;

    invoke-virtual {v6}, Lcom/ub/main/ubsale/UbProductAdapter;->notifyDataSetChanged()V

    .line 288
    .end local v0           #array:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #infoObject:Lorg/json/JSONObject;
    .end local v4           #temp:Lorg/json/JSONObject;
    .end local v5           #url:[Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    sput-boolean v6, Lcom/ub/main/util/NetConfig;->IS_DOWNLOAD_PRODUCT:Z

    .line 289
    return-void

    .line 234
    .restart local v0       #array:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #infoObject:Lorg/json/JSONObject;
    .restart local v4       #temp:Lorg/json/JSONObject;
    .restart local v5       #url:[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/util/Map;

    iput-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    .line 235
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    array-length v6, v6

    if-lt v3, v6, :cond_2

    .line 264
    :cond_1
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->dataList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 236
    :cond_2
    add-int v6, v1, v3

    iget-object v7, p0, Lcom/ub/main/ubsale/UbProduct;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 239
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->jsonArray:Lorg/json/JSONArray;

    add-int v7, v1, v3

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 240
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    .line 241
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v7, "title"

    const-string v8, "name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    .line 243
    const-string v7, "price"

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\uffe5"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    const-string v9, "sellPrice"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 245
    invoke-static {v9}, Lcom/ub/main/util/Tool;->getDimecalPriceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 244
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 242
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v7, "smallImg"

    const-string v8, "picSmall"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    add-int v6, v1, v3

    const-string v7, "picSmall"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 249
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v7, "bigmig"

    const-string v8, "picBig"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v7, "num"

    const-string v8, "num"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v7, "id"

    const-string v8, "id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v7, "icon"

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    const-string v7, "soldout"

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    iget-object v7, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    aput-object v7, v6, v3

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 274
    .end local v1           #i:I
    .end local v3           #j:I
    .end local v4           #temp:Lorg/json/JSONObject;
    .end local v5           #url:[Ljava/lang/String;
    :cond_3
    const-string v6, "\u6ca1\u6709\u83b7\u53d6\u5230\u5546\u54c1!"

    invoke-static {p0, v6}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 277
    .end local v0           #array:Ljava/lang/String;
    .end local v2           #infoObject:Lorg/json/JSONObject;
    :cond_4
    iget-object v6, p0, Lcom/ub/main/ubsale/UbProduct;->TAG:Ljava/lang/String;

    invoke-static {v6, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    const-string v7, "\u63d0\u793a"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 280
    invoke-virtual {v6, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 281
    const-string v7, "\u786e\u5b9a"

    new-instance v8, Lcom/ub/main/ubsale/UbProduct$2;

    invoke-direct {v8, p0}, Lcom/ub/main/ubsale/UbProduct$2;-><init>(Lcom/ub/main/ubsale/UbProduct;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 286
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 379
    invoke-super {p0, p1, p2, p3}, Lcom/ub/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 380
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/ub/main/ubsale/UbProduct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 382
    .local v6, bundel:Landroid/os/Bundle;
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_VMINFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 383
    const-string v0, "id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatGetUBoxMachineInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 385
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4ea7\u54c1\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 382
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/ubsale/UbProduct;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 390
    .end local v6           #bundel:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800ed

    if-ne v0, v1, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbProduct;->back()V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800be

    if-ne v0, v1, :cond_2

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ub/main/ubsale/UbProduct;->gotoBuy(I)V

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800da

    if-ne v0, v1, :cond_3

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ub/main/ubsale/UbProduct;->gotoBuy(I)V

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800e0

    if-ne v0, v1, :cond_0

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ub/main/ubsale/UbProduct;->gotoBuy(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/ub/main/ubsale/UbProduct;->setContentView(I)V

    .line 90
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbProduct;->initView()V

    .line 91
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbProduct;->initModel()V

    .line 92
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbProduct;->initControl()V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 165
    :cond_0
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    .line 166
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->adapter:Lcom/ub/main/ubsale/UbProductAdapter;

    invoke-virtual {v1}, Lcom/ub/main/ubsale/UbProductAdapter;->clear()V

    .line 167
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->adapter:Lcom/ub/main/ubsale/UbProductAdapter;

    .line 179
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->dataList:Ljava/util/ArrayList;

    .line 180
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 182
    :cond_1
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->dataMap:Ljava/util/Map;

    .line 184
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 186
    :cond_2
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->machine:Ljava/util/HashMap;

    .line 187
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->task:Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 191
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->tasklist:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 192
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->tasklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 193
    :cond_3
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->tasklist:Ljava/util/ArrayList;

    .line 194
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 195
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 202
    .end local v0           #i:I
    :cond_4
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    .line 203
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->listView:Landroid/widget/ListView;

    .line 204
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->backBtn:Landroid/widget/Button;

    .line 205
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->address:Landroid/widget/TextView;

    .line 206
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->title:Landroid/widget/TextView;

    .line 207
    iput-object v2, p0, Lcom/ub/main/ubsale/UbProduct;->head:Landroid/view/ViewGroup;

    .line 208
    invoke-static {p0}, Lcom/ub/main/net/ImageLoadingTask2;->clearCacheImage(Landroid/content/Context;)V

    .line 209
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 210
    return-void

    .line 196
    .restart local v0       #i:I
    :cond_5
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    .line 197
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 198
    iget-object v1, p0, Lcom/ub/main/ubsale/UbProduct;->row:[Ljava/util/Map;

    aput-object v2, v1, v0

    .line 195
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 293
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/ub/main/ubsale/UbProduct;->back()V

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
