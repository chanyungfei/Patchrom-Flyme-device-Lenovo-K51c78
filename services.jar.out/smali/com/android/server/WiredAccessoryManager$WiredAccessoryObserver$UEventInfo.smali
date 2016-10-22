.class final Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEventInfo"
.end annotation


# instance fields
.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I

.field private final mStateNbits:I

.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V
    .locals 0
    .param p2, "devName"    # Ljava/lang/String;
    .param p3, "state1Bits"    # I
    .param p4, "state2Bits"    # I
    .param p5, "stateNbits"    # I

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 526
    iput p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 527
    iput p4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    .line 528
    iput p5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    .line 529
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .locals 2

    .prologue
    .line 542
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public computeNewHeadsetState(II)I
    .locals 5
    .param p1, "headsetState"    # I
    .param p2, "switchState"    # I

    .prologue
    .line 547
    iget v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    iget v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    or-int/2addr v3, v4

    xor-int/lit8 v1, v3, -0x1

    .line 552
    .local v1, "preserveMask":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const-string v4, "h2w"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    iget-object v3, v3, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mNonStandardHeadphoneToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$1200(Lcom/android/server/WiredAccessoryManager;)Landroid/widget/Toast;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 555
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    iget-object v3, v3, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mNonStandardHeadphoneToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$1200(Lcom/android/server/WiredAccessoryManager;)Landroid/widget/Toast;

    move-result-object v3

    const v4, 0x1040071

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    .line 556
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    iget-object v3, v3, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mNonStandardHeadphoneToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$1200(Lcom/android/server/WiredAccessoryManager;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    iget v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 566
    .local v2, "setBits":I
    :goto_1
    and-int v3, p1, v1

    or-int/2addr v3, v2

    return v3

    .line 558
    .end local v2    # "setBits":I
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "exception ocurred"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    iget v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    if-ne p2, v3, :cond_3

    iget v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 534
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "/devices/virtual/switch/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 538
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "/sys/class/switch/%s/state"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
