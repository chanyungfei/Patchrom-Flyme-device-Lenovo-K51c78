.class Lcom/android/settings/inputmethod/InputMethodPreference$1;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    # getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->lastTonchTime:J
    invoke-static {v2}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$000(Lcom/android/settings/inputmethod/InputMethodPreference;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/settings/inputmethod/InputMethodPreference;->lastTonchTime:J
    invoke-static {v0, v2, v3}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$002(Lcom/android/settings/inputmethod/InputMethodPreference;J)J

    .line 126
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    # invokes: Lcom/android/settings/inputmethod/InputMethodPreference;->onInputMethodPrefClicked()V
    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$100(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
