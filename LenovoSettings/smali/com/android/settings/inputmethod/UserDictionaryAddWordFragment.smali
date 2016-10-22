.class public Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;
.super Landroid/app/Fragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# static fields
.field private static final OPTIONS_MENU_DELETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "input"


# instance fields
.field private mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDeleting:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    return-void
.end method

.method private updateSpinner()V
    .locals 4

    .prologue
    .line 175
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v1

    .line 177
    .local v1, "localesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 179
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 180
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->setRetainInstance(Z)V

    .line 83
    const-string v0, "input"

    const-string v1, "UserDictionaryAddWordFragment create "

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 89
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 147
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x0

    .line 131
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0ace

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020058

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 134
    .local v0, "actionItem":Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const v0, 0x7f0400bb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 96
    const-string v0, "input"

    const-string v1, "UserDictionaryAddWordFragment onCreateView "

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c08be

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    .line 196
    .local v0, "locale":Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->isMoreLanguages()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 205
    .local v1, "sa":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 209
    .end local v1    # "sa":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->getLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 223
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    .line 160
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 161
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 186
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v0, :cond_0

    .line 187
    const-string v0, "input"

    const-string v1, "onPause apply"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    .line 190
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 171
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    .line 172
    return-void
.end method
