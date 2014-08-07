.class public Lcom/ub/main/foodsale/FoodPromotionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FoodPromotionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodPromotion;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private selectPosition:I


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
            "Lcom/ub/main/foodsale/FoodPromotion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/foodsale/FoodPromotion;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->selectPosition:I

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    iput-object p2, p0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->datas:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->activity:Landroid/app/Activity;

    .line 61
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->datas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelected()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->selectPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 86
    move-object/from16 v15, p2

    .line 87
    .local v15, view:Landroid/view/View;
    new-instance v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;-><init>(Lcom/ub/main/foodsale/FoodPromotionListAdapter;)V

    .line 88
    .local v12, holder:Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;
    if-nez v15, :cond_2

    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030043

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 90
    const v1, 0x7f080087

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 91
    const v1, 0x7f080089

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f080166

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->range:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f080167

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->discount:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f080168

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->timeRange:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0800a9

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f080085

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {v15, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->datas:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ub/main/foodsale/FoodPromotion;

    .line 104
    .local v9, data:Lcom/ub/main/foodsale/FoodPromotion;
    if-eqz v9, :cond_0

    .line 105
    invoke-virtual {v9}, Lcom/ub/main/foodsale/FoodPromotion;->status()Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 107
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const v2, 0x7f0200af

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :cond_0
    :goto_1
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/ub/main/foodsale/FoodPromotion;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :try_start_0
    new-instance v13, Lorg/json/JSONArray;

    invoke-virtual {v9}, Lcom/ub/main/foodsale/FoodPromotion;->brief()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 126
    .local v13, object:Lorg/json/JSONArray;
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->range:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->discount:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->timeRange:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v13           #object:Lorg/json/JSONArray;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Lcom/ub/main/foodsale/FoodPromotion;->icon()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v8

    .line 140
    .local v8, cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    if-eqz v8, :cond_5

    .line 141
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 142
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 152
    :cond_1
    :goto_3
    return-object v15

    .line 100
    .end local v8           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v9           #data:Lcom/ub/main/foodsale/FoodPromotion;
    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #holder:Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;
    check-cast v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;

    .restart local v12       #holder:Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 110
    .restart local v9       #data:Lcom/ub/main/foodsale/FoodPromotion;
    :cond_3
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 111
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->selectPosition:I

    move/from16 v0, p1

    if-ne v1, v0, :cond_4

    .line 112
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const v2, 0x7f0200ae

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 115
    :cond_4
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->selectimage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 130
    :catch_0
    move-exception v11

    .line 132
    .local v11, e:Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 144
    .end local v11           #e:Lorg/json/JSONException;
    .restart local v8       #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f0200d1

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoadingTask2;->getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 145
    .local v10, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 148
    .local v14, taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    new-instance v1, Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v9}, Lcom/ub/main/foodsale/FoodPromotion;->icon()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const v5, 0x7f0200d1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->activity:Landroid/app/Activity;

    sget-object v7, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    invoke-virtual {v14, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/ub/main/net/ImageLoadingTask2;

    iget-object v2, v12, Lcom/ub/main/foodsale/FoodPromotionListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {v1, v14, v2}, Lcom/ub/main/net/ImageLoadingTask2;-><init>(Ljava/util/LinkedList;I)V

    invoke-virtual {v1}, Lcom/ub/main/net/ImageLoadingTask2;->start()V

    goto :goto_3
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/foodsale/FoodPromotion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/foodsale/FoodPromotion;>;"
    iput-object p1, p0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->datas:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p0}, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->notifyDataSetChanged()V

    .line 55
    return-void
.end method

.method public setSelected(I)V
    .locals 0
    .parameter "select"

    .prologue
    .line 45
    iput p1, p0, Lcom/ub/main/foodsale/FoodPromotionListAdapter;->selectPosition:I

    .line 46
    return-void
.end method
