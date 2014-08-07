.class public Lcom/ub/main/movie/Label;
.super Landroid/widget/TextView;
.source "Label.java"


# instance fields
.field private selected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/movie/Label;->selected:Z

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/movie/Label;->selected:Z

    .line 18
    return-void
.end method


# virtual methods
.method public isSelected_()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/ub/main/movie/Label;->selected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "s"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/ub/main/movie/Label;->selected:Z

    .line 26
    return-void
.end method
