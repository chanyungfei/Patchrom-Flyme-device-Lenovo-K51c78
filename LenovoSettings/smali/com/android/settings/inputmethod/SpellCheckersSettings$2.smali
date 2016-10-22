.class Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Lcom/flyme/deviceoriginalsettings/inputmethod/SingleSpellCheckerPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings;

.field final synthetic val$scp:Lcom/flyme/deviceoriginalsettings/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings;Lcom/flyme/deviceoriginalsettings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings$2;->val$scp:Lcom/flyme/deviceoriginalsettings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings$2;->val$scp:Lcom/flyme/deviceoriginalsettings/inputmethod/SingleSpellCheckerPreference;

    # invokes: Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Lcom/flyme/deviceoriginalsettings/inputmethod/SingleSpellCheckerPreference;)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings;->access$000(Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings;Lcom/flyme/deviceoriginalsettings/inputmethod/SingleSpellCheckerPreference;)V

    .line 132
    return-void
.end method
