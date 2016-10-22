.class public Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;
.super Landroid/app/Fragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# static fields
.field private static final OPTIONS_MENU_DELETE:I = 0x1


# instance fields
.field private mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDeleting:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    return-void
.end method

.method private updateSpinner()V
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v1

    .line 172
    .local v1, "localesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 174
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 175
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->setRetainInstance(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 85
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 142
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x0

    .line 126
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0abf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020058

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 129
    .local v0, "actionItem":Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 135
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v0, 0x7f0400bb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 94
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c08b2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 102
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
    .line 189
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    .line 190
    .local v0, "locale":Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->isMoreLanguages()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 199
    .local v1, "sa":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 203
    .end local v1    # "sa":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    :goto_0
    return-void

    .line 201
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
    .line 215
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 217
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
    .line 208
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    .local v0, "args":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    .line 155
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    .line 156
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 181
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    .line 184
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 166
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    .line 167
    return-void
.end method
