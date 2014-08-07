.class Lcom/ub/main/Hall$1;
.super Ljava/lang/Object;
.source "Hall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ub/main/Hall;->quit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ub/main/Hall;


# direct methods
.method constructor <init>(Lcom/ub/main/Hall;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ub/main/Hall$1;->this$0:Lcom/ub/main/Hall;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ub/main/Hall$1;->this$0:Lcom/ub/main/Hall;

    invoke-virtual {v0}, Lcom/ub/main/Hall;->finish()V

    .line 303
    return-void
.end method
