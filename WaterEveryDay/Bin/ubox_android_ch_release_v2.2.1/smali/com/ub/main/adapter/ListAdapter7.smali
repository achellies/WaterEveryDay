.class public Lcom/ub/main/adapter/ListAdapter7;
.super Landroid/widget/BaseAdapter;
.source "ListAdapter7.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;
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
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/adapter/ListAdapter7;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ub/main/adapter/ListAdapter7;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, holder:Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;
    if-nez p2, :cond_0

    .line 58
    new-instance v0, Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;

    .end local v0           #holder:Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;
    invoke-direct {v0, p0}, Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;-><init>(Lcom/ub/main/adapter/ListAdapter7;)V

    .line 60
    .restart local v0       #holder:Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;
    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter7;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    const v1, 0x7f08002c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;->name:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f08002d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;->time:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f08002f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;->money:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f08002e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;->type:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object v2, v0, Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter7;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v0, Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;->time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter7;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "time"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, v0, Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;->money:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter7;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "money"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v2, v0, Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;->type:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/adapter/ListAdapter7;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "type"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-object p2

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;
    check-cast v0, Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;

    .restart local v0       #holder:Lcom/ub/main/adapter/ListAdapter7$ViewHolder1;
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
    .line 34
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/ub/main/adapter/ListAdapter7;->data:Ljava/util/List;

    .line 35
    return-void
.end method
