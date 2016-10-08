.class Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
.super Ljava/lang/Object;
.source "HotKnotActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hotknot/HotKnotActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HotKnotApplicationState"
.end annotation


# instance fields
.field final app:Landroid/app/Application;

.field refCount:I

.field final synthetic this$0:Lcom/mediatek/hotknot/HotKnotActivityManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/hotknot/HotKnotActivityManager;Landroid/app/Application;)V
    .locals 1
    .param p2, "app"    # Landroid/app/Application;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->this$0:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->refCount:I

    .line 46
    iput-object p2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->app:Landroid/app/Application;

    .line 47
    return-void
.end method


# virtual methods
.method public register()V
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->refCount:I

    .line 50
    iget v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->refCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->app:Landroid/app/Application;

    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->this$0:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 53
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 55
    iget v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->refCount:I

    .line 56
    iget v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->refCount:I

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->app:Landroid/app/Application;

    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->this$0:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->refCount:I

    if-gez v0, :cond_0

    .line 59
    const-string v0, "HotKnot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-ve refcount for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->app:Landroid/app/Application;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
