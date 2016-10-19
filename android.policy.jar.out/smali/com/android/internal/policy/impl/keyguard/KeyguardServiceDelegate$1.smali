.class Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;
.super Landroid/os/Handler;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->reConnectionKeyguard(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/content/Context;)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->reConnectionKeyguardDelayed()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
