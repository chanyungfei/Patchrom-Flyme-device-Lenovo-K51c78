.class Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;
.super Landroid/os/Handler;
.source "InputMethodPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveImeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;->this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$1;

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 387
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 393
    :goto_0
    return-void

    .line 389
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;->this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    # invokes: Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->saveImeSettings()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->access$800(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
