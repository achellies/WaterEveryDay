.class public Lcom/ub/main/order/OrderAdapter;
.super Landroid/widget/BaseAdapter;
.source "OrderAdapter.java"


# instance fields
.field private context:Landroid/app/Activity;

.field datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ub/main/order/OrderAdapter;->context:Landroid/app/Activity;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/order/OrderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 37
    iput-object p2, p0, Lcom/ub/main/order/OrderAdapter;->datas:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ub/main/order/OrderAdapter;->datas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ub/main/order/OrderAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 61
    const/4 v4, 0x0

    .line 62
    .local v4, icon:Landroid/widget/ImageView;
    const/4 v12, 0x0

    .line 63
    .local v12, id:Landroid/widget/TextView;
    const/4 v13, 0x0

    .line 64
    .local v13, money:Landroid/widget/TextView;
    const/4 v15, 0x0

    .line 67
    .local v15, time:Landroid/widget/TextView;
    const/4 v11, 0x0

    .line 68
    .local v11, holder:Landroid/view/View;
    if-nez p2, :cond_1

    .line 69
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/order/OrderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030042

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 73
    :goto_0
    const v1, 0x7f080161

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #icon:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 74
    .restart local v4       #icon:Landroid/widget/ImageView;
    const v1, 0x7f080162

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #id:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 75
    .restart local v12       #id:Landroid/widget/TextView;
    const v1, 0x7f080163

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #money:Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 76
    .restart local v13       #money:Landroid/widget/TextView;
    const v1, 0x7f080164

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #time:Landroid/widget/TextView;
    check-cast v15, Landroid/widget/TextView;

    .line 79
    .restart local v15       #time:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/order/OrderAdapter;->datas:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 80
    .local v9, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v9, :cond_0

    .line 82
    const-string v1, "id"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const-string v1, "money"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const-string v1, "time"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ub/main/order/OrderAdapter;->context:Landroid/app/Activity;

    const-string v1, "imgUrl"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v8

    .line 89
    .local v8, cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    if-eqz v8, :cond_2

    .line 90
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 91
    invoke-virtual {v8, v4}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 102
    .end local v8           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :cond_0
    :goto_1
    return-object v11

    .line 71
    .end local v9           #data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    move-object/from16 v11, p2

    goto :goto_0

    .line 93
    .restart local v8       #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .restart local v9       #data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/order/OrderAdapter;->context:Landroid/app/Activity;

    const v2, 0x7f0200af

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoadingTask2;->getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 94
    .local v10, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 97
    .local v14, taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    new-instance v1, Lcom/ub/main/net/ImageLoadingTaskInfo;

    mul-int/lit8 v2, p1, 0x3

    const-string v3, "imgUrl"

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v5, 0x7f0200af

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ub/main/order/OrderAdapter;->context:Landroid/app/Activity;

    sget-object v7, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    invoke-direct/range {v1 .. v7}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    invoke-virtual {v14, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/ub/main/net/ImageLoadingTask2;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {v1, v14, v2}, Lcom/ub/main/net/ImageLoadingTask2;-><init>(Ljava/util/LinkedList;I)V

    invoke-virtual {v1}, Lcom/ub/main/net/ImageLoadingTask2;->start()V

    goto :goto_1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/ub/main/order/OrderAdapter;->datas:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0}, Lcom/ub/main/order/OrderAdapter;->notifyDataSetChanged()V

    .line 32
    return-void
.end method

.method public setDatas(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/ub/main/order/OrderAdapter;->datas:Ljava/util/ArrayList;

    .line 42
    return-void
.end method
