.class Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$1;
.super Ljava/lang/Object;
.source "SystemPropertySignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;


# direct methods
.method constructor <init>(Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$1;->this$0:Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal$1;->this$0:Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;

    # invokes: Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->onPropertyChange()V
    invoke-static {v0}, Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;->access$000(Lcom/lenovo/datamining/avatar/misc/SystemPropertySignal;)V

    .line 25
    return-void
.end method
