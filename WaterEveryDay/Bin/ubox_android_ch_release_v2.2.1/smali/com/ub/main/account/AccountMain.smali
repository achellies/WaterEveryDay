.class public Lcom/ub/main/account/AccountMain;
.super Lcom/ub/main/BaseActivity;
.source "AccountMain.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ub/main/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field private static final CREDITCARD:I = 0x1

.field private static final TYPENAME:Ljava/lang/String; = "type"


# instance fields
.field private data1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private data2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private data3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private data4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private data5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private listView1:Landroid/widget/ListView;

.field private listView2:Landroid/widget/ListView;

.field private listView3:Landroid/widget/ListView;

.field private listView4:Landroid/widget/ListView;

.field private listView5:Landroid/widget/ListView;

.field private newPasswrod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/account/AccountMain;->newPasswrod:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/account/AccountMain;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ub/main/account/AccountMain;->newPasswrod:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/ub/main/account/AccountMain;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ub/main/account/AccountMain;->newPasswrod:Ljava/lang/String;

    return-object v0
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ub/main/account/AccountMain;->listView1:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/ub/main/account/AccountMain;->listView2:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/ub/main/account/AccountMain;->listView3:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/ub/main/account/AccountMain;->listView4:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/ub/main/account/AccountMain;->listView5:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    return-void
.end method

.method private initModel()V
    .locals 9

    .prologue
    const v8, 0x7f020004

    .line 122
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ub/main/account/AccountMain;->data1:Ljava/util/List;

    .line 123
    const/4 v5, 0x0

    .line 125
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 126
    .restart local v5       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "img1"

    const v7, 0x7f020096

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v6, "title"

    const-string v7, "\u4fee\u6539\u5bc6\u7801"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v6, "img2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data1:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 132
    .restart local v5       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "img1"

    const v7, 0x7f020090

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v6, "title"

    const-string v7, "\u4fee\u6539\u7ed1\u5b9a\u624b\u673a"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v6, "img2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data1:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    .line 139
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 140
    .restart local v5       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "img1"

    const v7, 0x7f020068

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v6, "title"

    const-string v7, "\u4fee\u6539\u4fe1\u7528\u5361"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v6, "img2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 146
    .restart local v5       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "img1"

    const v7, 0x7f02009a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v6, "title"

    const-string v7, "\u53cb\u5b9d\u94b1\u5305"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v6, "img2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 152
    .restart local v5       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "img1"

    const v7, 0x7f0200b3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v6, "title"

    const-string v7, "\u6536\u652f\u660e\u7ec6"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v6, "img2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ub/main/account/AccountMain;->data3:Ljava/util/List;

    .line 158
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 159
    .restart local v5       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "img1"

    const v7, 0x7f02006b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v6, "title"

    const-string v7, "\u610f\u89c1\u53cd\u9988"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v6, "img2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data3:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 171
    .restart local v5       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "img1"

    const/high16 v7, 0x7f02

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v6, "title"

    const-string v7, "\u5173\u4e8e"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v6, "img2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data3:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ub/main/account/AccountMain;->data4:Ljava/util/List;

    .line 178
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 179
    .restart local v5       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "img"

    const v7, 0x7f020061

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v6, "title"

    const-string v7, "\u8054\u7cfb\u6211\u4eec"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v6, "info"

    const-string v7, "4001-528-528"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v6, "time_name"

    const-string v7, "\u5de5\u4f5c\u65f6\u95f4\uff1a"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v6, "time"

    const-string v7, "08\uff1a00 - 18\uff1a00"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data4:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ub/main/account/AccountMain;->data5:Ljava/util/List;

    .line 188
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 189
    .restart local v5       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "img"

    const v7, 0x7f02008b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v6, "title"

    const-string v7, "\u767b\u51fa\u8d26\u53f7"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data5:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->loadData()V

    .line 195
    new-instance v0, Lcom/ub/main/adapter/ListAdapter1;

    invoke-direct {v0, p0}, Lcom/ub/main/adapter/ListAdapter1;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, adapter1:Lcom/ub/main/adapter/ListAdapter1;
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data1:Ljava/util/List;

    invoke-virtual {v0, v6}, Lcom/ub/main/adapter/ListAdapter1;->setData(Ljava/util/List;)V

    .line 197
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->listView1:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    new-instance v1, Lcom/ub/main/adapter/ListAdapter1;

    invoke-direct {v1, p0}, Lcom/ub/main/adapter/ListAdapter1;-><init>(Landroid/content/Context;)V

    .line 200
    .local v1, adapter2:Lcom/ub/main/adapter/ListAdapter1;
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-virtual {v1, v6}, Lcom/ub/main/adapter/ListAdapter1;->setData(Ljava/util/List;)V

    .line 201
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->listView2:Landroid/widget/ListView;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    new-instance v2, Lcom/ub/main/adapter/ListAdapter2;

    invoke-direct {v2, p0}, Lcom/ub/main/adapter/ListAdapter2;-><init>(Landroid/content/Context;)V

    .line 204
    .local v2, adapter3:Lcom/ub/main/adapter/ListAdapter2;
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data3:Ljava/util/List;

    invoke-virtual {v2, v6}, Lcom/ub/main/adapter/ListAdapter2;->setData(Ljava/util/List;)V

    .line 205
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->listView3:Landroid/widget/ListView;

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ub/main/account/AccountMain;->data3:Ljava/util/List;

    .line 208
    new-instance v3, Lcom/ub/main/adapter/ListAdapter3;

    invoke-direct {v3, p0}, Lcom/ub/main/adapter/ListAdapter3;-><init>(Landroid/content/Context;)V

    .line 209
    .local v3, adapter4:Lcom/ub/main/adapter/ListAdapter3;
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data4:Ljava/util/List;

    invoke-virtual {v3, v6}, Lcom/ub/main/adapter/ListAdapter3;->setData(Ljava/util/List;)V

    .line 210
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->listView4:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    new-instance v4, Lcom/ub/main/adapter/ListAdapter4;

    invoke-direct {v4, p0}, Lcom/ub/main/adapter/ListAdapter4;-><init>(Landroid/content/Context;)V

    .line 213
    .local v4, adapter5:Lcom/ub/main/adapter/ListAdapter4;
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->data5:Ljava/util/List;

    invoke-virtual {v4, v6}, Lcom/ub/main/adapter/ListAdapter4;->setData(Ljava/util/List;)V

    .line 214
    iget-object v6, p0, Lcom/ub/main/account/AccountMain;->listView5:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    return-void
.end method

.method private initUserInfo()V
    .locals 7

    .prologue
    .line 92
    const v6, 0x7fffffff

    .line 94
    .local v6, entrance:I
    sget-object v0, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    invoke-static {v0}, Lcom/ub/main/util/Tool;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const/4 v6, 0x1

    .line 99
    :cond_0
    :goto_0
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_USER_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 100
    sget-object v0, Lcom/ub/main/util/NetConfig;->UID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->creatGetUserInfoPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u7528\u6237\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/account/AccountMain;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 107
    return-void

    .line 96
    :cond_1
    sget-object v0, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    invoke-static {v0}, Lcom/ub/main/util/Tool;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 303
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ub/main/account/AccountMain;->listView1:Landroid/widget/ListView;

    .line 304
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ub/main/account/AccountMain;->listView2:Landroid/widget/ListView;

    .line 305
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ub/main/account/AccountMain;->listView3:Landroid/widget/ListView;

    .line 306
    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ub/main/account/AccountMain;->listView4:Landroid/widget/ListView;

    .line 307
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ub/main/account/AccountMain;->listView5:Landroid/widget/ListView;

    .line 309
    return-void
.end method

.method private loadData()V
    .locals 3

    .prologue
    .line 227
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountMain;->putPassword(Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v1, "pt_ActId"

    invoke-virtual {v0, v1}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountMain;->putCreditCard(Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountMain;->putMobile(Ljava/lang/String;)V

    .line 232
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountMain;->putZFB(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\uffe5"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v2, "balance"

    invoke-virtual {v1, v2}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountMain;->putRemain(Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ub/main/account/AccountMain;->putLogout(Ljava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method

.method private logOut()V
    .locals 3

    .prologue
    .line 390
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 392
    const-string v1, "\u4f60\u786e\u5b9a\u8981\u767b\u51fa\u8d26\u6237?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 393
    const-string v1, "\u786e\u5b9a"

    .line 394
    new-instance v2, Lcom/ub/main/account/AccountMain$1;

    invoke-direct {v2, p0}, Lcom/ub/main/account/AccountMain$1;-><init>(Lcom/ub/main/account/AccountMain;)V

    .line 393
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 446
    const-string v1, "\u53d6\u6d88"

    .line 447
    new-instance v2, Lcom/ub/main/account/AccountMain$2;

    invoke-direct {v2, p0}, Lcom/ub/main/account/AccountMain$2;-><init>(Lcom/ub/main/account/AccountMain;)V

    .line 446
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 452
    return-void
.end method

.method private putLogout(Ljava/lang/String;)V
    .locals 4
    .parameter "id"

    .prologue
    .line 240
    sget-object v1, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 241
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data5:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 246
    return-void

    .line 240
    .end local v0           #i:I
    :cond_0
    sget-object v1, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 242
    .restart local v0       #i:I
    :cond_1
    const-string v2, "\u767b\u51fa\u8d26\u53f7"

    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data5:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data5:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "info"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private showDialog()V
    .locals 7

    .prologue
    .line 487
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 488
    .local v0, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 489
    .local v3, textEntryView:Landroid/view/View;
    const v4, 0x7f08009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 490
    .local v1, newPsw:Landroid/widget/EditText;
    const v4, 0x7f08009e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 491
    .local v2, oldPsw:Landroid/widget/EditText;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    const-string v5, "\u4fee\u6539\u5bc6\u7801"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 494
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 495
    const-string v5, "\u53d6\u6d88"

    new-instance v6, Lcom/ub/main/account/AccountMain$3;

    invoke-direct {v6, p0}, Lcom/ub/main/account/AccountMain$3;-><init>(Lcom/ub/main/account/AccountMain;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 508
    const-string v5, "\u63d0\u4ea4\u4fee\u6539"

    new-instance v6, Lcom/ub/main/account/AccountMain$4;

    invoke-direct {v6, p0, v2, v1}, Lcom/ub/main/account/AccountMain$4;-><init>(Lcom/ub/main/account/AccountMain;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 592
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 593
    return-void
.end method

.method private showDialogPhoneCall()V
    .locals 3

    .prologue
    .line 596
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5ba2\u670d\u7535\u8bdd"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 597
    const-string v1, "4001-528-528"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 597
    const-string v1, "\u53d6\u6d88"

    .line 598
    new-instance v2, Lcom/ub/main/account/AccountMain$5;

    invoke-direct {v2, p0}, Lcom/ub/main/account/AccountMain$5;-><init>(Lcom/ub/main/account/AccountMain;)V

    .line 597
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 601
    const-string v1, "\u547c\u53eb"

    .line 602
    new-instance v2, Lcom/ub/main/account/AccountMain$6;

    invoke-direct {v2, p0}, Lcom/ub/main/account/AccountMain$6;-><init>(Lcom/ub/main/account/AccountMain;)V

    .line 601
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 609
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 619
    const-string v1, "200"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->GET_USER_INFO:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->jsonObject:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/ub/main/util/NetConfig;->saveUserInfo(Lorg/json/JSONObject;)Lcom/ub/main/data/UserInfoBean;

    move-result-object v1

    sput-object v1, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    .line 622
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->initModel()V

    .line 623
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->initControl()V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MODIFY_PASSWORD:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    const-string v1, "\u5bc6\u7801\u4fee\u6539\u6210\u529f"

    const-string v2, "========================================="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v1, "\u5bc6\u7801\u4fee\u6539\u6210\u529f\uff01"

    invoke-static {p0, v1}, Lcom/ub/main/util/Tool;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 635
    new-instance v0, Lcom/ub/main/data/UserDataManage;

    invoke-direct {v0, p0}, Lcom/ub/main/data/UserDataManage;-><init>(Landroid/content/Context;)V

    .line 636
    .local v0, userDataManage:Lcom/ub/main/data/UserDataManage;
    sget-object v1, Lcom/ub/main/data/UserInfoBean;->USER_ACOUNT:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/account/AccountMain;->newPasswrod:Ljava/lang/String;

    .line 637
    sget v3, Lcom/ub/main/util/UIConfig;->LEARN_PASSWORD_FLAG:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 638
    sget v4, Lcom/ub/main/util/UIConfig;->AUTO_LOGIN_FLAG:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 636
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ub/main/data/UserDataManage;->saveUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const/4 v0, 0x0

    .line 640
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->newPasswrod:Ljava/lang/String;

    sput-object v1, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD:Ljava/lang/String;

    .line 641
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->newPasswrod:Ljava/lang/String;

    invoke-static {v1}, Lcom/ub/main/util/Tool;->UTFCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ub/main/util/Tool;->getUserPasswordMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ub/main/data/UserInfoBean;->USER_PASSWORD_MD5:Ljava/lang/String;

    goto :goto_0

    .line 646
    .end local v0           #userDataManage:Lcom/ub/main/data/UserDataManage;
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 647
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 648
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 649
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/ub/main/account/AccountMain$7;

    invoke-direct {v3, p0}, Lcom/ub/main/account/AccountMain$7;-><init>(Lcom/ub/main/account/AccountMain;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 653
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/ub/main/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->initUserInfo()V

    .line 81
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->loadData()V

    .line 82
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->initModel()V

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 85
    sget-object v0, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/ub/main/account/AccountMain;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v0, "AccountMain"

    iput-object v0, p0, Lcom/ub/main/account/AccountMain;->TAG:Ljava/lang/String;

    .line 68
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/ub/main/account/AccountMain;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->initUserInfo()V

    .line 70
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->initView()V

    .line 71
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->initModel()V

    .line 72
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->initControl()V

    .line 73
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 314
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 387
    :goto_0
    return-void

    .line 316
    :pswitch_0
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "++listView1++-> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 320
    :pswitch_1
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->showDialog()V

    goto :goto_0

    .line 323
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 324
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "entrance"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 325
    const-string v1, "phone_number"

    sget-object v2, Lcom/ub/main/util/NetConfig;->USER_INFO_BEAN_OBJECT:Lcom/ub/main/data/UserInfoBean;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/ub/main/data/UserInfoBean;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-class v1, Lcom/ub/main/account/AccountBindPhone;

    const/4 v2, 0x7

    invoke-static {p0, v1, v2, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 334
    .end local v0           #bundle:Landroid/os/Bundle;
    :pswitch_3
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "++listView2++-> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    packed-switch p3, :pswitch_data_2

    goto :goto_0

    .line 337
    :pswitch_4
    sget-object v1, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 338
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    .line 342
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 343
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-class v1, Lcom/ub/main/account/AccountCreditCard;

    const/16 v2, 0x8

    invoke-static {p0, v1, v2, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 340
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    sget-object v1, Lcom/ub/main/util/UIConfig;->tempXYKList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 348
    :pswitch_5
    const-class v1, Lcom/ub/main/account/Recharge;

    const/16 v2, 0x9

    invoke-static {p0, v1, v2}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;I)V

    goto :goto_0

    .line 351
    :pswitch_6
    const-class v1, Lcom/ub/main/account/AccountDetail;

    invoke-static {p0, v1}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 359
    :pswitch_7
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "++listView3++-> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    packed-switch p3, :pswitch_data_3

    goto/16 :goto_0

    .line 362
    :pswitch_8
    const-class v1, Lcom/ub/main/account/Feedback;

    invoke-static {p0, v1}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 368
    :pswitch_9
    const-class v1, Lcom/ub/main/account/AccountAbout;

    invoke-static {p0, v1}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 376
    :pswitch_a
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "++listView4++-> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->showDialogPhoneCall()V

    goto/16 :goto_0

    .line 381
    :pswitch_b
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "++listView5++-> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0}, Lcom/ub/main/account/AccountMain;->logOut()V

    goto/16 :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x7f080030
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 317
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 335
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 360
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 662
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 665
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 614
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 615
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 455
    invoke-virtual {p0}, Lcom/ub/main/account/AccountMain;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    :cond_0
    return v1
.end method

.method public putCreditCard(Ljava/lang/String;)V
    .locals 5
    .parameter "creditCard"

    .prologue
    const/16 v3, 0xc

    .line 280
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 282
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, delete:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 290
    .end local v0           #delete:Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    return-void

    .line 285
    .restart local v0       #delete:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_1
    const-string v3, "\u4fee\u6539\u4fe1\u7528\u5361"

    iget-object v2, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "title"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "info"

    const-string v4, "****"

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public putMobile(Ljava/lang/String;)V
    .locals 4
    .parameter "mobile"

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    const-string p1, ""

    .line 260
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 265
    return-void

    .line 261
    :cond_1
    const-string v2, "\u4fee\u6539\u7ed1\u5b9a\u624b\u673a"

    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data1:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data1:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "info"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putPassword(Ljava/lang/String;)V
    .locals 4
    .parameter "password"

    .prologue
    .line 249
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 254
    return-void

    .line 250
    :cond_0
    const-string v2, "\u4fee\u6539\u5bc6\u7801"

    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data1:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data1:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "info"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putRemain(Ljava/lang/String;)V
    .locals 4
    .parameter "remain"

    .prologue
    .line 293
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 298
    return-void

    .line 294
    :cond_0
    const-string v2, "\u53cb\u5b9d\u94b1\u5305"

    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "info"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public putZFB(Ljava/lang/String;)V
    .locals 4
    .parameter "ZFB"

    .prologue
    .line 272
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 277
    return-void

    .line 273
    :cond_0
    const-string v2, "\u6536\u652f\u660e\u7ec6"

    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/ub/main/account/AccountMain;->data2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "info"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
