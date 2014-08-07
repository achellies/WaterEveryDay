.class public Lcom/ub/main/uplus/UBoxPlusMain;
.super Lcom/ub/main/BaseActivity;
.source "UBoxPlusMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SHARED_NAME:Ljava/lang/String; = "UPLUS_CLICK"


# instance fields
.field private allTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/uplus/UPlusTaskCell;",
            ">;"
        }
    .end annotation
.end field

.field private back:Landroid/widget/Button;

.field private child:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/uplus/UPlusTaskCell;",
            ">;>;"
        }
    .end annotation
.end field

.field private cinemaAdapter:Lcom/ub/main/uplus/UPlusTaskAdapter;

.field private head:Landroid/view/ViewGroup;

.field private mExpandableListView:Landroid/widget/ExpandableListView;

.field private recentTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/uplus/UPlusTaskCell;",
            ">;"
        }
    .end annotation
.end field

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

.field private title:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->recentTaskList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->allTaskList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->child:Ljava/util/ArrayList;

    .line 317
    new-instance v0, Lcom/ub/main/uplus/UBoxPlusMain$1;

    invoke-direct {v0, p0}, Lcom/ub/main/uplus/UBoxPlusMain$1;-><init>(Lcom/ub/main/uplus/UBoxPlusMain;)V

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/uplus/UBoxPlusMain;)Lcom/ub/main/uplus/UPlusTaskAdapter;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->cinemaAdapter:Lcom/ub/main/uplus/UPlusTaskAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/uplus/UBoxPlusMain;)Lcom/ub/main/uplus/UPlusTaskCell;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    return-object v0
.end method

.method private back()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->finish()V

    .line 214
    return-void
.end method

.method private createCoupnFailed()V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    const-string v1, "\u5151\u6362\u5931\u8d25"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5151\u6362\u5931\u8d25\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u6210\u529f\u5b89\u88c5"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    invoke-virtual {v2}, Lcom/ub/main/uplus/UPlusTaskCell;->appName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5ba2\u6237\u7aef\uff0c\u53ef\u70b9\u51fb\u7acb\u5373\u4e0b\u8f7d\u7ee7\u7eed\u5b8c\u6210\u4efb\u52a1!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 275
    const-string v1, "\u77e5\u9053\u4e86"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 276
    const-string v1, "\u7acb\u5373\u4e0b\u8f7d"

    new-instance v2, Lcom/ub/main/uplus/UBoxPlusMain$3;

    invoke-direct {v2, p0}, Lcom/ub/main/uplus/UBoxPlusMain$3;-><init>(Lcom/ub/main/uplus/UBoxPlusMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 287
    return-void
.end method

.method private initControl()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/ub/main/uplus/UBoxPlusMain$2;

    invoke-direct {v1, p0}, Lcom/ub/main/uplus/UBoxPlusMain$2;-><init>(Lcom/ub/main/uplus/UBoxPlusMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 107
    return-void
.end method

.method private initModel()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->child:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ub/main/uplus/UBoxPlusMain;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->child:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ub/main/uplus/UBoxPlusMain;->allTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "\u6b63\u5728\u83b7\u53d6\u4efb\u52a1\u5217\u8868..."

    move-object v0, p0

    move-object v4, p0

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/uplus/UBoxPlusMain;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/ub/main/uplus/UBoxPlusMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->head:Landroid/view/ViewGroup;

    .line 80
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->back:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->back:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->head:Landroid/view/ViewGroup;

    const v1, 0x7f0800e9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->title:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->title:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lcom/ub/main/uplus/UBoxPlusMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 89
    new-instance v0, Lcom/ub/main/uplus/UPlusTaskAdapter;

    invoke-direct {v0, p0}, Lcom/ub/main/uplus/UPlusTaskAdapter;-><init>(Lcom/ub/main/uplus/UBoxPlusMain;)V

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->cinemaAdapter:Lcom/ub/main/uplus/UPlusTaskAdapter;

    .line 90
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/ub/main/uplus/UBoxPlusMain;->cinemaAdapter:Lcom/ub/main/uplus/UPlusTaskAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/ub/main/uplus/UBoxPlusMain;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 92
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 114
    const-string v5, "200"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p3}, Lcom/ub/main/util/Tool;->DisplayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sget-object v5, Lcom/ub/main/util/NetConfig$HttpRequestId;->UPLUS_GET_APP_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    if-ne p1, v5, :cond_5

    .line 122
    iget-object v5, p0, Lcom/ub/main/uplus/UBoxPlusMain;->jsonObject:Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 123
    .local v0, array:Lorg/json/JSONArray;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 124
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 131
    iget-object v5, p0, Lcom/ub/main/uplus/UBoxPlusMain;->cinemaAdapter:Lcom/ub/main/uplus/UPlusTaskAdapter;

    iget-object v6, p0, Lcom/ub/main/uplus/UBoxPlusMain;->child:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/ub/main/uplus/UPlusTaskAdapter;->setChildren(Ljava/util/ArrayList;)V

    .line 132
    iget-object v5, p0, Lcom/ub/main/uplus/UBoxPlusMain;->mExpandableListView:Landroid/widget/ExpandableListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 133
    iget-object v5, p0, Lcom/ub/main/uplus/UBoxPlusMain;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v7}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0

    .line 125
    :cond_2
    new-instance v1, Lcom/ub/main/uplus/UPlusTaskCell;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/ub/main/uplus/UPlusTaskCell;-><init>(Lorg/json/JSONObject;)V

    .line 126
    .local v1, cell:Lcom/ub/main/uplus/UPlusTaskCell;
    iget-object v5, p0, Lcom/ub/main/uplus/UBoxPlusMain;->allTaskList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v1}, Lcom/ub/main/uplus/UPlusTaskCell;->isNow()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    iget-object v5, p0, Lcom/ub/main/uplus/UBoxPlusMain;->recentTaskList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    .end local v1           #cell:Lcom/ub/main/uplus/UPlusTaskCell;
    .end local v2           #i:I
    :cond_4
    invoke-virtual {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "\u4efb\u52a1\u5217\u8868\u4e3a\u7a7a"

    invoke-static {v5, v6}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v0           #array:Lorg/json/JSONArray;
    :cond_5
    sget-object v5, Lcom/ub/main/util/NetConfig$HttpRequestId;->UPLUS_RECEIVE_TASK:Lcom/ub/main/util/NetConfig$HttpRequestId;

    if-ne p1, v5, :cond_0

    .line 160
    iget-object v5, p0, Lcom/ub/main/uplus/UBoxPlusMain;->jsonObject:Lorg/json/JSONObject;

    const-string v6, "status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 171
    iget-object v5, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    invoke-virtual {v5, v7}, Lcom/ub/main/uplus/UPlusTaskCell;->setDownLoaded(Z)V

    .line 172
    iget-object v5, p0, Lcom/ub/main/uplus/UBoxPlusMain;->cinemaAdapter:Lcom/ub/main/uplus/UPlusTaskAdapter;

    invoke-virtual {v5}, Lcom/ub/main/uplus/UPlusTaskAdapter;->notifyDataSetChanged()V

    .line 174
    iget-object v5, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    invoke-virtual {v5}, Lcom/ub/main/uplus/UPlusTaskCell;->appUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 175
    .local v4, url:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    .local v3, it:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/ub/main/uplus/UBoxPlusMain;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 178
    .end local v3           #it:Landroid/content/Intent;
    .end local v4           #url:Landroid/net/Uri;
    :cond_6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    const-string v6, "\u9886\u53d6\u5931\u8d25"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 180
    iget-object v6, p0, Lcom/ub/main/uplus/UBoxPlusMain;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "msg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 181
    const-string v6, "\u786e\u5b9a"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "className"

    .prologue
    .line 298
    const/4 v2, 0x0

    .line 300
    .local v2, isRunning:Z
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 302
    .local v0, activityManager:Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 304
    .local v3, serviceList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 305
    const/4 v4, 0x0

    .line 314
    :goto_0
    return v4

    .line 308
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    :goto_2
    move v4, v2

    .line 314
    goto :goto_0

    .line 309
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 310
    const/4 v2, 0x1

    .line 311
    goto :goto_2

    .line 308
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 341
    const/16 v0, 0x67

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->recentTaskList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->allTaskList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    .line 345
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->cinemaAdapter:Lcom/ub/main/uplus/UPlusTaskAdapter;

    invoke-virtual {v0}, Lcom/ub/main/uplus/UPlusTaskAdapter;->notifyDataSetChanged()V

    .line 347
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 220
    :sswitch_0
    invoke-direct {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->back()V

    goto :goto_0

    .line 223
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/uplus/UPlusTaskCell;

    iput-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    .line 224
    iget-object v0, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    invoke-virtual {v0, p0}, Lcom/ub/main/uplus/UPlusTaskCell;->isDownLoaded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    invoke-virtual {v1}, Lcom/ub/main/uplus/UPlusTaskCell;->appPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "app_id"

    iget-object v1, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    invoke-virtual {v1}, Lcom/ub/main/uplus/UPlusTaskCell;->taskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-class v0, Lcom/ub/main/uplus/UBoxPlusCouponSelect;

    const/16 v1, 0x67

    invoke-static {p0, v0, v1, v6}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 237
    .end local v6           #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->createCoupnFailed()V

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    invoke-virtual {v1}, Lcom/ub/main/uplus/UPlusTaskCell;->appPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 249
    const-string v1, "\u60a8\u7684\u5ba2\u6237\u7aef\u5df2\u5b89\u88c5\u8fc7\u8be5\u5e94\u7528\uff0c\u65e0\u6cd5\u53c2\u4e0e\u6d3b\u52a8!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 250
    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 252
    :cond_2
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->UPLUS_RECEIVE_TASK:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 253
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    .line 254
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "device_no"

    aput-object v3, v2, v4

    invoke-static {}, Lcom/ub/main/util/UIConfig;->getPHONE_MAC_ADDRESS()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ub/main/util/Tool;->UTFCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    .line 255
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "app_id"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ub/main/uplus/UBoxPlusMain;->tempCell:Lcom/ub/main/uplus/UPlusTaskCell;

    invoke-virtual {v3}, Lcom/ub/main/uplus/UPlusTaskCell;->taskId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    .line 256
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "device_token"

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ub/main/util/Tool;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ub/main/util/Tool;->UTFCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v7

    .line 253
    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatHttpProtocolPostString([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "\u6b63\u5728\u9886\u53d6\u4efb\u52a1..."

    move-object v0, p0

    move-object v4, p0

    .line 252
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/uplus/UBoxPlusMain;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080061 -> :sswitch_1
        0x7f0800ed -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/ub/main/uplus/UBoxPlusMain;->setContentView(I)V

    .line 60
    invoke-direct {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->initModel()V

    .line 61
    invoke-direct {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->initView()V

    .line 62
    invoke-direct {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->initControl()V

    .line 63
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 190
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/ub/main/uplus/UBoxPlusMain;->back()V

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
