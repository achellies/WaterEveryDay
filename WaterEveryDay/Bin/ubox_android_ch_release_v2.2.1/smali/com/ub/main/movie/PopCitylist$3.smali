.class Lcom/ub/main/movie/PopCitylist$3;
.super Ljava/lang/Object;
.source "PopCitylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/movie/PopCitylist;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/movie/PopCitylist;


# direct methods
.method constructor <init>(Lcom/ub/main/movie/PopCitylist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/movie/PopCitylist$3;->this$0:Lcom/ub/main/movie/PopCitylist;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ub/main/movie/PopCitylist$3;->this$0:Lcom/ub/main/movie/PopCitylist;

    invoke-virtual {v0}, Lcom/ub/main/movie/PopCitylist;->dismiss()V

    .line 127
    return-void
.end method
