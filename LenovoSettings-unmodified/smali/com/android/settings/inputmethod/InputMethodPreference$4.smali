.class Lcom/android/settings/inputmethod/InputMethodPreference$4;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

.field final synthetic val$chkPref:Lcom/android/settings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$4;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodPreference$4;->val$chkPref:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$4;->val$chkPref:Lcom/android/settings/inputmethod/InputMethodPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/settings/inputmethod/InputMethodPreference;->setChecked(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$700(Lcom/android/settings/inputmethod/InputMethodPreference;ZZ)V

    .line 340
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodPreference$SaveImeHandler;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$4;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodPreference$SaveImeHandler;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference$1;)V

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/inputmethod/InputMethodPreference$SaveImeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 341
    return-void
.end method
