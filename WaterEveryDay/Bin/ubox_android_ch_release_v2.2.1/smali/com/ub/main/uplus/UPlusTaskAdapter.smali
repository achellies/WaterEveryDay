.class public Lcom/ub/main/uplus/UPlusTaskAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "UPlusTaskAdapter.java"


# instance fields
.field private activity:Lcom/ub/main/uplus/UBoxPlusMain;

.field private children:Ljava/util/ArrayList;
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

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/ub/main/uplus/UBoxPlusMain;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/uplus/UPlusTaskAdapter;->children:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p1}, Lcom/ub/main/uplus/UBoxPlusMain;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/uplus/UPlusTaskAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object p1, p0, Lcom/ub/main/uplus/UPlusTaskAdapter;->activity:Lcom/ub/main/uplus/UBoxPlusMain;

    .line 27
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ub/main/uplus/UPlusTaskAdapter;->children:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 46
    .local v17, cellList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/uplus/UPlusTaskCell;>;"
    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ub/main/uplus/UPlusTaskCell;

    .line 48
    .local v16, cell:Lcom/ub/main/uplus/UPlusTaskCell;
    const/16 v21, 0x0

    .line 49
    .local v21, view:Landroid/view/View;
    if-nez p4, :cond_1

    .line 50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ub/main/uplus/UPlusTaskAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 55
    :goto_0
    const v2, 0x7f080061

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 57
    .local v19, operBtn:Landroid/widget/Button;
    const v2, 0x7f080059

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 58
    .local v5, icon:Landroid/widget/ImageView;
    const v2, 0x7f08005a

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 59
    .local v12, appName:Landroid/widget/TextView;
    const v2, 0x7f08005b

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 60
    .local v11, appInfo:Landroid/widget/TextView;
    const v2, 0x7f08005c

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 61
    .local v14, appUseCount:Landroid/widget/TextView;
    const v2, 0x7f08005d

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 62
    .local v9, appCountUnit:Landroid/widget/TextView;
    const v2, 0x7f080060

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 63
    .local v10, appCouponInfo:Landroid/widget/TextView;
    const v2, 0x7f08005f

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 65
    .local v13, appOperator:Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/uplus/UPlusTaskCell;->appName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/uplus/UPlusTaskCell;->appInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/uplus/UPlusTaskCell;->couponInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ub/main/uplus/UPlusTaskAdapter;->activity:Lcom/ub/main/uplus/UBoxPlusMain;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ub/main/uplus/UPlusTaskAdapter;->activity:Lcom/ub/main/uplus/UBoxPlusMain;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/ub/main/uplus/UPlusTaskCell;->isDownLoaded(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const v2, -0xa547a6

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    const v2, -0xa547a6

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    const v2, -0xa547a6

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    const-string v2, "\u5df2\u6fc0\u6d3b\uff0c\u5b8c\u6210\u5b89\u88c5\u8bf7\u70b9\u51fb\u7acb\u5373\u5151\u6362"

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const-string v2, "\u4eba\u5df2\u5151\u6362"

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const-string v2, "\u7acb\u5373\u5151\u6362"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/uplus/UPlusTaskCell;->hasUseCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v2, 0x7f02003d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 81
    const v2, 0x7f08005e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020023

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ub/main/uplus/UPlusTaskAdapter;->activity:Lcom/ub/main/uplus/UBoxPlusMain;

    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/uplus/UPlusTaskCell;->iconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v15

    .line 95
    .local v15, cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    if-eqz v15, :cond_3

    .line 96
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 97
    invoke-virtual {v15, v5}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 108
    :cond_0
    :goto_2
    return-object v21

    .line 52
    .end local v5           #icon:Landroid/widget/ImageView;
    .end local v9           #appCountUnit:Landroid/widget/TextView;
    .end local v10           #appCouponInfo:Landroid/widget/TextView;
    .end local v11           #appInfo:Landroid/widget/TextView;
    .end local v12           #appName:Landroid/widget/TextView;
    .end local v13           #appOperator:Landroid/widget/TextView;
    .end local v14           #appUseCount:Landroid/widget/TextView;
    .end local v15           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v19           #operBtn:Landroid/widget/Button;
    :cond_1
    move-object/from16 v21, p4

    goto/16 :goto_0

    .line 83
    .restart local v5       #icon:Landroid/widget/ImageView;
    .restart local v9       #appCountUnit:Landroid/widget/TextView;
    .restart local v10       #appCouponInfo:Landroid/widget/TextView;
    .restart local v11       #appInfo:Landroid/widget/TextView;
    .restart local v12       #appName:Landroid/widget/TextView;
    .restart local v13       #appOperator:Landroid/widget/TextView;
    .restart local v14       #appUseCount:Landroid/widget/TextView;
    .restart local v19       #operBtn:Landroid/widget/Button;
    :cond_2
    const v2, -0xf9ce1

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    const v2, -0xf9ce1

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    const v2, -0xf9ce1

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    const-string v2, "\u4eba\u5df2\u9886\u53d6"

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const-string v2, "\u672a\u6fc0\u6d3b\uff0c\u70b9\u51fb\u7acb\u5373\u9886\u53d6\u6fc0\u6d3b\u4efb\u52a1"

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const-string v2, "\u7acb\u5373\u9886\u53d6"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/uplus/UPlusTaskCell;->receive_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v2, 0x7f020040

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 91
    const v2, 0x7f08005e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 99
    .restart local v15       #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ub/main/uplus/UPlusTaskAdapter;->activity:Lcom/ub/main/uplus/UBoxPlusMain;

    const v3, 0x7f020003

    invoke-static {v2, v3}, Lcom/ub/main/net/ImageLoadingTask2;->getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 100
    .local v18, drawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    new-instance v20, Ljava/util/LinkedList;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    .line 103
    .local v20, taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    new-instance v2, Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/ub/main/uplus/UPlusTaskCell;->iconUrl()Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f020003

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ub/main/uplus/UPlusTaskAdapter;->activity:Lcom/ub/main/uplus/UBoxPlusMain;

    sget-object v8, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move/from16 v3, p2

    invoke-direct/range {v2 .. v8}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v2, Lcom/ub/main/net/ImageLoadingTask2;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v3

    move-object/from16 v0, v20

    invoke-direct {v2, v0, v3}, Lcom/ub/main/net/ImageLoadingTask2;-><init>(Ljava/util/LinkedList;I)V

    invoke-virtual {v2}, Lcom/ub/main/net/ImageLoadingTask2;->start()V

    goto/16 :goto_2
.end method

.method public getChildrenCount(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/ub/main/uplus/UPlusTaskAdapter;->children:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/ub/main/uplus/UPlusTaskAdapter;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 120
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/uplus/UPlusTaskCell;>;"
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x2

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 185
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 141
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    return-object v2

    .line 143
    :pswitch_0
    iget-object v4, p0, Lcom/ub/main/uplus/UPlusTaskAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030048

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 144
    .local v2, recentView:Landroid/view/View;
    const v4, 0x7f08016e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, isNull:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/ub/main/uplus/UPlusTaskAdapter;->getChildrenCount(I)I

    move-result v4

    if-gtz v4, :cond_0

    .line 146
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 152
    .end local v0           #isNull:Landroid/view/View;
    .end local v2           #recentView:Landroid/view/View;
    :pswitch_1
    iget-object v4, p0, Lcom/ub/main/uplus/UPlusTaskAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030047

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 153
    .local v3, view:Landroid/view/View;
    const v4, 0x7f08016d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, openOrClosed:Landroid/view/View;
    if-eqz p2, :cond_1

    .line 155
    const v4, 0x7f0200c5

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    move-object v2, v3

    .line 159
    goto :goto_0

    .line 157
    :cond_1
    const v4, 0x7f0200c4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public setChildren(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/uplus/UPlusTaskCell;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, child:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/ub/main/uplus/UPlusTaskCell;>;>;"
    iput-object p1, p0, Lcom/ub/main/uplus/UPlusTaskAdapter;->children:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p0}, Lcom/ub/main/uplus/UPlusTaskAdapter;->notifyDataSetChanged()V

    .line 36
    return-void
.end method
