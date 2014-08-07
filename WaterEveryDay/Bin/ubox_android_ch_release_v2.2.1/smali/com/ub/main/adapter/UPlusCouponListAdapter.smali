.class public Lcom/ub/main/adapter/UPlusCouponListAdapter;
.super Landroid/widget/BaseAdapter;
.source "UPlusCouponListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
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

.field private mInflater:Landroid/view/LayoutInflater;

.field private selectPosition:I

.field private url:Ljava/lang/String;


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
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->selectPosition:I

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    iput-object p2, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->data:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->context:Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->activity:Landroid/app/Activity;

    .line 58
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 79
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelected()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->selectPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v1, 0x7f080083

    const v4, 0x7f020032

    const/4 v2, 0x0

    .line 85
    move-object v10, p2

    .line 86
    .local v10, view:Landroid/view/View;
    const/4 v8, 0x0

    .line 87
    .local v8, holder:Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;
    if-nez v10, :cond_1

    .line 88
    new-instance v8, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;

    .end local v8           #holder:Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;
    invoke-direct {v8, p0}, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;-><init>(Lcom/ub/main/adapter/UPlusCouponListAdapter;)V

    .line 89
    .restart local v8       #holder:Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;
    iget-object v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030050

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 90
    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;->image:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f08017f

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;->couponName:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f080180

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;->selectImage:Landroid/widget/ImageView;

    .line 93
    invoke-virtual {v10, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    :goto_0
    iget-object v3, v8, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;->couponName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v5, "templateTitle"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->selectPosition:I

    if-ne v0, p1, :cond_2

    .line 101
    iget-object v0, v8, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;->selectImage:Landroid/widget/ImageView;

    const v3, 0x7f0200ae

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v0, v8, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;->selectImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :goto_1
    iget-object v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "templateIcon"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->url:Ljava/lang/String;

    .line 109
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 110
    .local v9, taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    const/4 v7, 0x0

    .line 111
    .local v7, cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    iget-object v3, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->url:Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v0, v2

    :goto_2
    invoke-static {v3, v0}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v7

    .line 112
    if-eqz v7, :cond_4

    .line 113
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 114
    iget-object v0, v8, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 121
    :cond_0
    :goto_3
    new-instance v0, Lcom/ub/main/net/ImageLoadingTask2;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {v0, v9, v1}, Lcom/ub/main/net/ImageLoadingTask2;-><init>(Ljava/util/LinkedList;I)V

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoadingTask2;->start()V

    .line 123
    const-string v1, "\u4f18\u60e0\u5238\u540d\u5b57+\u56fe\u7247"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "templateTitle"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v10, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    const/4 v8, 0x0

    .line 126
    return-object v10

    .line 95
    .end local v7           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v9           #taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #holder:Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;
    check-cast v8, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;

    .restart local v8       #holder:Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;
    goto/16 :goto_0

    .line 104
    :cond_2
    iget-object v0, v8, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;->selectImage:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 111
    .restart local v7       #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .restart local v9       #taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_3
    iget-object v0, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->url:Ljava/lang/String;

    goto :goto_2

    .line 116
    :cond_4
    iget-object v0, v8, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    iget-object v3, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->url:Ljava/lang/String;

    if-nez v3, :cond_5

    :goto_4
    iget-object v3, v8, Lcom/ub/main/adapter/UPlusCouponListAdapter$UPlusViewHolder;->image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->activity:Landroid/app/Activity;

    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->url:Ljava/lang/String;

    goto :goto_4
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
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->data:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0}, Lcom/ub/main/adapter/UPlusCouponListAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public setSelected(I)V
    .locals 0
    .parameter "select"

    .prologue
    .line 40
    iput p1, p0, Lcom/ub/main/adapter/UPlusCouponListAdapter;->selectPosition:I

    .line 41
    return-void
.end method
