.class Lcom/android/server/am/ActivityManagerService$37;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 22945
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$37;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 22948
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$37;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mPropertyChangeListener:Lcom/lenovo/datamining/hook/PropertyChangeListener;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;)Lcom/lenovo/datamining/hook/PropertyChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$37;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/datamining/hook/PropertyChangeListener;->onPropertyChange(Landroid/content/Context;)V

    .line 22949
    return-void
.end method
