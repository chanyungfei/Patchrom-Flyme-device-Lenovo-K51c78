.class Lcom/flyme/deviceoriginalsettings/CryptKeeper$5;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$5;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 699
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v3, 0x0

    .line 703
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$5;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 704
    new-instance v0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$5;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;-><init>(Lcom/flyme/deviceoriginalsettings/CryptKeeper;Lcom/flyme/deviceoriginalsettings/CryptKeeper$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 705
    return-void
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$5;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$5;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$200(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 695
    return-void
.end method
