.class public Lcom/ub/main/adapter/ListAdapter3;
.super Landroid/widget/BaseAdapter;
.source "ListAdapter3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;
    }
.end annotation


# instance fields
.field data:Ljava/util/List;
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

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/adapter/ListAdapter3;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ub/main/adapter/ListAdapter3;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v4, 0x8

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, holder:Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;
    if-nez p2, :cond_0

    .line 54
    new-instance v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;

    .end local v0           #holder:Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;
    invoke-direct {v0, p0}, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;-><init>(Lcom/ub/main/adapter/ListAdapter3;)V

    .line 56
    .restart local v0       #holder:Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;
    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter3;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    const v1, 0x7f080105

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->img:Landroid/widget/ImageView;

    .line 58
    const v1, 0x7f080103

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->title:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f08008c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->info:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f080106

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->time_name:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0800a9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->time:Landroid/widget/TextView;

    .line 62
    iget-object v1, v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->time_name:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v1, v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->time:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object v2, v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter3;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "img"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 72
    iget-object v2, v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter3;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter3;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "info"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->time_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter3;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "time_name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;->time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter3;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "time"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-object p2

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;
    check-cast v0, Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;

    .restart local v0       #holder:Lcom/ub/main/adapter/ListAdapter3$ViewHolder1;
    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
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
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/ub/main/adapter/ListAdapter3;->data:Ljava/util/List;

    .line 31
    return-void
.end method
