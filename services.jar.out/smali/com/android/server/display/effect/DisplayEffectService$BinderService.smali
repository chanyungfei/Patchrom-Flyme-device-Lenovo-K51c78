.class final Lcom/android/server/display/effect/DisplayEffectService$BinderService;
.super Landroid/app/IDisplayEffectManager$Stub;
.source "DisplayEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/effect/DisplayEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/effect/DisplayEffectService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/effect/DisplayEffectService;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-direct {p0}, Landroid/app/IDisplayEffectManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/effect/DisplayEffectService;Lcom/android/server/display/effect/DisplayEffectService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;
    .param p2, "x1"    # Lcom/android/server/display/effect/DisplayEffectService$1;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;-><init>(Lcom/android/server/display/effect/DisplayEffectService;)V

    return-void
.end method

.method private checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 533
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/effect/DisplayEffectService;->access$100(Lcom/android/server/display/effect/DisplayEffectService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "lenovo.permission.MODIFY_DISPAY_EFFECT_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 536
    const/4 v1, 0x1

    .line 542
    :goto_0
    return v1

    .line 538
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Effect Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "DisplayEffectService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dumpVaules([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 444
    if-nez p1, :cond_1

    .line 445
    const/4 v3, 0x0

    .line 455
    :cond_0
    return-object v3

    .line 448
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 450
    .local v3, "result":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 451
    .local v4, "string":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/effect/DisplayEffectService;->access$100(Lcom/android/server/display/effect/DisplayEffectService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump DisplayEffect from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    :cond_0
    return-void

    .line 413
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedMode = [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getSupportedMode()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->dumpVaules([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode_settings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMode_native = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mNativeAdapter:Lcom/android/server/display/effect/DisplayEffectNativeAdapter;
    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->access$200(Lcom/android/server/display/effect/DisplayEffectService;)Lcom/android/server/display/effect/DisplayEffectNativeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/effect/DisplayEffectNativeAdapter;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFinalDisplayMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mFinalDisplayMode:I
    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->access$300(Lcom/android/server/display/effect/DisplayEffectService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedDisplayEffect = [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getSupportedDisplayEffect()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->dumpVaules([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/display/effect/DisplayEffectService;->access$400(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/display/effect/DisplayEffectService;->access$400(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 427
    const-string v1, "null"

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->access$400(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedMaxLevel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->access$400(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getSupportedMaxLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 434
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/display/effect/DisplayEffectService;->access$400(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 435
    const-string v1, "null"

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->access$400(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentLevel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->access$400(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->getCurrentLevel(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCurrentLevel(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->getCurrentLevelInternal(I)I
    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->access$700(Lcom/android/server/display/effect/DisplayEffectService;I)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 4

    .prologue
    .line 522
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->access$100(Lcom/android/server/display/effect/DisplayEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 523
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "display_mode"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 525
    .local v0, "displayMode":I
    return v0
.end method

.method public getSupportedDisplayEffect()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/effect/DisplayEffectService;->access$400(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedMaxLevel(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->getSupportedMaxLevelInternal(I)I
    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->access$600(Lcom/android/server/display/effect/DisplayEffectService;I)I

    move-result v0

    return v0
.end method

.method public getSupportedMode()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/effect/DisplayEffectService;->access$500(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCABC(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->setCABCInternal(I)V
    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->access$1300(Lcom/android/server/display/effect/DisplayEffectService;I)V

    .line 530
    return-void
.end method

.method public setDisplayEffectLevel(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v2, -0x1

    .line 475
    const-string v3, "DisplayEffectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDisplayEffectLevel: index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v3, "setDisplayEffectLevel()"

    invoke-direct {p0, v3}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v2

    .line 483
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->getSupportedMaxLevelInternal(I)I
    invoke-static {v3, p1}, Lcom/android/server/display/effect/DisplayEffectService;->access$600(Lcom/android/server/display/effect/DisplayEffectService;I)I

    move-result v1

    .line 485
    .local v1, "maxLevel":I
    if-ltz p2, :cond_2

    if-ge p2, v1, :cond_2

    .line 486
    iget-object v3, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->setDisplayEffectLevelInternal(II)I
    invoke-static {v3, p1, p2}, Lcom/android/server/display/effect/DisplayEffectService;->access$800(Lcom/android/server/display/effect/DisplayEffectService;II)I

    move-result v3

    if-nez v3, :cond_0

    .line 487
    iget-object v3, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/display/effect/DisplayEffectService;->access$400(Lcom/android/server/display/effect/DisplayEffectService;)[Ljava/lang/String;

    move-result-object v3

    aget-object v0, v3, p1

    .line 488
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 489
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->saveState(Ljava/lang/String;I)V
    invoke-static {v2, v0, p2}, Lcom/android/server/display/effect/DisplayEffectService;->access$900(Lcom/android/server/display/effect/DisplayEffectService;Ljava/lang/String;I)V

    .line 490
    const/4 v2, 0x0

    goto :goto_0

    .line 494
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    const-string v3, "DisplayEffectService"

    const-string v4, "setDisplayEffectLevel: invalid level"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setModeFromSettings(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 501
    const-string v0, "DisplayEffectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeFromSettings: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v0, "setModeFromSettings()"

    invoke-direct {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->checkModeSupportedByNative(I)Z
    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->access$1000(Lcom/android/server/display/effect/DisplayEffectService;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    :cond_0
    const/4 p1, -0x1

    .line 510
    .end local p1    # "mode":I
    :goto_0
    return p1

    .line 509
    .restart local p1    # "mode":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    const-string v1, "display_mode"

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->saveState(Ljava/lang/String;I)V
    invoke-static {v0, v1, p1}, Lcom/android/server/display/effect/DisplayEffectService;->access$900(Lcom/android/server/display/effect/DisplayEffectService;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setModeOverride(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 514
    const-string v0, "DisplayEffectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeOverride: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # setter for: Lcom/android/server/display/effect/DisplayEffectService;->mPendingDisplayModeOverride:I
    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->access$1102(Lcom/android/server/display/effect/DisplayEffectService;I)I

    .line 517
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->scheduleUpdateMode()V
    invoke-static {v0}, Lcom/android/server/display/effect/DisplayEffectService;->access$1200(Lcom/android/server/display/effect/DisplayEffectService;)V

    .line 518
    return p1
.end method
