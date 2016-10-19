.class Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;


# direct methods
.method constructor <init>(Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;)V
    .locals 0

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback$1;->this$1:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback$1;->this$1:Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;

    # invokes: Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->peekDrawer()V
    invoke-static {v0}, Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;->access$000(Lcom/lenovo/component/slidemenu/DrawerLayout$ViewDragCallback;)V

    .line 1540
    return-void
.end method
