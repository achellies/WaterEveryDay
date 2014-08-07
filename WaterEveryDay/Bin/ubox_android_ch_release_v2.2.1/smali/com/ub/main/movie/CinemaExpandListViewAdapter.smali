.class public Lcom/ub/main/movie/CinemaExpandListViewAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CinemaExpandListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    }
.end annotation


# instance fields
.field private children:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private isArrow:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local p3, child:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->groups:Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->children:Ljava/util/HashMap;

    .line 34
    iput-object p1, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->context:Landroid/content/Context;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 36
    iput-object p2, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->groups:Ljava/util/ArrayList;

    .line 37
    iput-object p3, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->children:Ljava/util/HashMap;

    .line 38
    iget-object v0, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->isArrow:[Z

    .line 39
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v3, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, result:Ljava/lang/Object;
    iget-object v4, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->children:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->groups:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    :cond_0
    move-object v2, v3

    .line 66
    .end local v2           #result:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 58
    .restart local v2       #result:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->getGroup(I)[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, groupName:Ljava/lang/String;
    iget-object v4, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->children:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 61
    .local v0, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_2

    move-object v2, v3

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 66
    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 75
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    invoke-virtual {p0, p1, p2}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 88
    .local v1, map:Ljava/util/HashMap;
    if-eqz v1, :cond_0

    .line 89
    if-nez p4, :cond_1

    .line 90
    new-instance v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;

    .end local v0           #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    invoke-direct {v0, p0}, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;-><init>(Lcom/ub/main/movie/CinemaExpandListViewAdapter;)V

    .line 91
    .restart local v0       #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    iget-object v3, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030036

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 92
    const v2, 0x7f08011c

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_name:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f08011e

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_value:Landroid/widget/TextView;

    .line 94
    const v2, 0x7f08011d

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_distance:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :goto_0
    iget-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_name:Landroid/widget/TextView;

    const-string v2, "cinema_name"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_value:Landroid/widget/TextView;

    const-string v2, "cinema_price"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_distance:Landroid/widget/TextView;

    const-string v2, "cinema_distance"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, p4

    .line 104
    :cond_0
    return-object v2

    .line 97
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    check-cast v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;

    .restart local v0       #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 5
    .parameter "groupPosition"

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v3, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->children:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->groups:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->getGroup(I)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, groupName:Ljava/lang/String;
    iget-object v3, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->children:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 120
    .local v0, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->getGroup(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)[Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 145
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    invoke-virtual {p0, p1}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->getGroup(I)[Ljava/lang/Object;

    move-result-object v1

    .line 158
    .local v1, obj:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 159
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_4

    .line 160
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    new-instance v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;

    .end local v0           #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    invoke-direct {v0, p0}, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;-><init>(Lcom/ub/main/movie/CinemaExpandListViewAdapter;)V

    .line 162
    .restart local v0       #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    iget-object v3, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030038

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 163
    const v3, 0x7f080124

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_name:Landroid/widget/TextView;

    .line 164
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    :cond_0
    :goto_0
    aget-object v3, v1, v5

    check-cast v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 189
    iget-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_name:Landroid/widget/TextView;

    aget-object v4, v1, v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_1
    :goto_1
    return-object v2

    .line 165
    :cond_2
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    new-instance v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;

    .end local v0           #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    invoke-direct {v0, p0}, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;-><init>(Lcom/ub/main/movie/CinemaExpandListViewAdapter;)V

    .line 167
    .restart local v0       #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    iget-object v3, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001d

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 168
    const v3, 0x7f0800a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_name:Landroid/widget/TextView;

    .line 169
    const v3, 0x7f0800a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_arrow:Landroid/widget/ImageView;

    .line 170
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :cond_3
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    new-instance v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;

    .end local v0           #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    invoke-direct {v0, p0}, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;-><init>(Lcom/ub/main/movie/CinemaExpandListViewAdapter;)V

    .line 173
    .restart local v0       #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    iget-object v3, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030036

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 174
    const v3, 0x7f08011c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_name:Landroid/widget/TextView;

    .line 175
    const v3, 0x7f08011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_value:Landroid/widget/TextView;

    .line 176
    const v3, 0x7f08011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_distance:Landroid/widget/TextView;

    .line 177
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 180
    :cond_4
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 181
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    check-cast v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;

    .restart local v0       #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    goto/16 :goto_0

    .line 182
    :cond_6
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    check-cast v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;

    .restart local v0       #holder_Cinema:Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;
    goto/16 :goto_0

    .line 190
    :cond_7
    aget-object v3, v1, v5

    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 191
    iget-object v4, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_name:Landroid/widget/TextView;

    aget-object v3, v1, v6

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v4, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_value:Landroid/widget/TextView;

    aget-object v3, v1, v6

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "value"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v4, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_distance:Landroid/widget/TextView;

    aget-object v3, v1, v6

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "distance"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 194
    :cond_8
    aget-object v3, v1, v5

    check-cast v3, Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    iget-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_name:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->getGroup(I)[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v3, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->isArrow:[Z

    aget-boolean v3, v3, p1

    if-eqz v3, :cond_9

    .line 197
    iget-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_arrow:Landroid/widget/ImageView;

    const v4, 0x7f020006

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 199
    :cond_9
    iget-object v3, v0, Lcom/ub/main/movie/CinemaExpandListViewAdapter$ViewHolder_Cinema;->Cinema_arrow:Landroid/widget/ImageView;

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 225
    iget-object v0, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->isArrow:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 226
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 219
    iget-object v0, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->isArrow:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 220
    return-void
.end method

.method public setChildren(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, child:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->children:Ljava/util/HashMap;

    .line 31
    invoke-virtual {p0}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->notifyDataSetChanged()V

    .line 32
    return-void
.end method

.method public setGroups(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->groups:Ljava/util/ArrayList;

    .line 25
    iget-object v0, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->isArrow:[Z

    .line 26
    invoke-virtual {p0}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->notifyDataSetChanged()V

    .line 27
    return-void
.end method
