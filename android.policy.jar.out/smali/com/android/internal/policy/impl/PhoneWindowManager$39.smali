.class Lcom/android/internal/policy/impl/PhoneWindowManager$39;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 8315
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$39;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x52

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8318
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$39;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->keyRemappingSendFakeKeyEvent(II)V
    invoke-static {v0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/PhoneWindowManager;II)V

    .line 8319
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$39;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->keyRemappingSendFakeKeyEvent(II)V
    invoke-static {v0, v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/PhoneWindowManager;II)V

    .line 8321
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$39;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongPress:Z

    .line 8322
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$39;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 8323
    return-void
.end method
