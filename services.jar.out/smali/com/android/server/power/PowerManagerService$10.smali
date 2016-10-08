.class Lcom/android/server/power/PowerManagerService$10;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 4338
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 4340
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBackLightPropertiesDeath:Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$8400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4341
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBackLightPropertiesDeath:Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$8400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mBinder:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBackLightPropertiesDeath:Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$8400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4343
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mBackLightPropertiesDeath:Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$8402(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;)Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;

    .line 4345
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$10;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1400(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    const/high16 v1, 0x7fc00000    # NaNf

    invoke-virtual {v0, v1, v3, v3}, Landroid/hardware/display/DisplayManagerInternal;->setBackLightProperties(FII)V

    .line 4348
    return-void
.end method
