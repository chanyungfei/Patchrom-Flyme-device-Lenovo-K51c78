.class Lcom/lenovo/component/slidemenu/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/slidemenu/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/slidemenu/ViewDragHelper;


# direct methods
.method constructor <init>(Lcom/lenovo/component/slidemenu/ViewDragHelper;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper$2;->this$0:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ViewDragHelper$2;->this$0:Lcom/lenovo/component/slidemenu/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/component/slidemenu/ViewDragHelper;->setDragState(I)V

    .line 349
    return-void
.end method
