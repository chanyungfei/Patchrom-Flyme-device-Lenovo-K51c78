.class Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$5;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

.field final synthetic val$chkPref:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$5;->this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$5;->val$chkPref:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 331
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$5;->val$chkPref:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    # invokes: Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->setChecked(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->access$700(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;ZZ)V

    .line 332
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$5;->this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$1;)V

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 333
    return-void
.end method
