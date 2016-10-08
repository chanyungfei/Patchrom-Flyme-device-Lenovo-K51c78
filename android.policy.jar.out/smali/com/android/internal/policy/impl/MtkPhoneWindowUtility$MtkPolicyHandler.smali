.class Lcom/android/internal/policy/impl/MtkPhoneWindowUtility$MtkPolicyHandler;
.super Landroid/os/Handler;
.source "MtkPhoneWindowUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtkPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility$MtkPolicyHandler;->this$0:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;Lcom/android/internal/policy/impl/MtkPhoneWindowUtility$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/MtkPhoneWindowUtility$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility$MtkPolicyHandler;-><init>(Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility$MtkPolicyHandler;->this$0:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    # invokes: Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->enableFloatingMonitor()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->access$100(Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility$MtkPolicyHandler;->this$0:Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;

    # invokes: Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->disableFloatingMonitor()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;->access$200(Lcom/android/internal/policy/impl/MtkPhoneWindowUtility;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
