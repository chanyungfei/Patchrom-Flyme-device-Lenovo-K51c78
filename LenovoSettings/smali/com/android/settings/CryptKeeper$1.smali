.class Lcom/flyme/deviceoriginalsettings/CryptKeeper$1;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 141
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$1;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$1;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 144
    return-void
.end method
