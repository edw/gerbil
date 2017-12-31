(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#module-import::t
    (make-struct-type
     'gx#module-import::t
     '#f
     '4
     'module-import
     '((final: . #t))
     '#f))
  (define gx#module-import? (make-struct-predicate gx#module-import::t))
  (define gx#make-module-import
    (lambda _$args12119_
      (apply make-struct-instance gx#module-import::t _$args12119_)))
  (define gx#module-import-source
    (make-struct-field-accessor gx#module-import::t '0))
  (define gx#module-import-name
    (make-struct-field-accessor gx#module-import::t '1))
  (define gx#module-import-phi
    (make-struct-field-accessor gx#module-import::t '2))
  (define gx#module-import-weak?
    (make-struct-field-accessor gx#module-import::t '3))
  (define gx#module-import-source-set!
    (make-struct-field-mutator gx#module-import::t '0))
  (define gx#module-import-name-set!
    (make-struct-field-mutator gx#module-import::t '1))
  (define gx#module-import-phi-set!
    (make-struct-field-mutator gx#module-import::t '2))
  (define gx#module-import-weak?-set!
    (make-struct-field-mutator gx#module-import::t '3))
  (define gx#module-export::t
    (make-struct-type
     'gx#module-export::t
     '#f
     '5
     'module-export
     '((final: . #t))
     '#f))
  (define gx#module-export? (make-struct-predicate gx#module-export::t))
  (define gx#make-module-export
    (lambda _$args12116_
      (apply make-struct-instance gx#module-export::t _$args12116_)))
  (define gx#module-export-context
    (make-struct-field-accessor gx#module-export::t '0))
  (define gx#module-export-key
    (make-struct-field-accessor gx#module-export::t '1))
  (define gx#module-export-phi
    (make-struct-field-accessor gx#module-export::t '2))
  (define gx#module-export-name
    (make-struct-field-accessor gx#module-export::t '3))
  (define gx#module-export-weak?
    (make-struct-field-accessor gx#module-export::t '4))
  (define gx#module-export-context-set!
    (make-struct-field-mutator gx#module-export::t '0))
  (define gx#module-export-key-set!
    (make-struct-field-mutator gx#module-export::t '1))
  (define gx#module-export-phi-set!
    (make-struct-field-mutator gx#module-export::t '2))
  (define gx#module-export-name-set!
    (make-struct-field-mutator gx#module-export::t '3))
  (define gx#module-export-weak?-set!
    (make-struct-field-mutator gx#module-export::t '4))
  (define gx#import-set::t
    (make-struct-type
     'gx#import-set::t
     '#f
     '3
     'import-set
     '((final: . #t))
     '#f))
  (define gx#import-set? (make-struct-predicate gx#import-set::t))
  (define gx#make-import-set
    (lambda _$args12113_
      (apply make-struct-instance gx#import-set::t _$args12113_)))
  (define gx#import-set-source
    (make-struct-field-accessor gx#import-set::t '0))
  (define gx#import-set-phi (make-struct-field-accessor gx#import-set::t '1))
  (define gx#import-set-imports
    (make-struct-field-accessor gx#import-set::t '2))
  (define gx#import-set-source-set!
    (make-struct-field-mutator gx#import-set::t '0))
  (define gx#import-set-phi-set!
    (make-struct-field-mutator gx#import-set::t '1))
  (define gx#import-set-imports-set!
    (make-struct-field-mutator gx#import-set::t '2))
  (define gx#export-set::t
    (make-struct-type
     'gx#export-set::t
     '#f
     '3
     'export-set
     '((final: . #t))
     '#f))
  (define gx#export-set? (make-struct-predicate gx#export-set::t))
  (define gx#make-export-set
    (lambda _$args12110_
      (apply make-struct-instance gx#export-set::t _$args12110_)))
  (define gx#export-set-source
    (make-struct-field-accessor gx#export-set::t '0))
  (define gx#export-set-phi (make-struct-field-accessor gx#export-set::t '1))
  (define gx#export-set-exports
    (make-struct-field-accessor gx#export-set::t '2))
  (define gx#export-set-source-set!
    (make-struct-field-mutator gx#export-set::t '0))
  (define gx#export-set-phi-set!
    (make-struct-field-mutator gx#export-set::t '1))
  (define gx#export-set-exports-set!
    (make-struct-field-mutator gx#export-set::t '2))
  (define gx#import-expander::t
    (make-struct-type
     'gx#import-expander::t
     gx#user-expander::t
     '0
     'import-expander
     '()
     ':init!))
  (define gx#import-expander? (make-struct-predicate gx#import-expander::t))
  (define gx#make-import-expander
    (lambda _$args12107_
      (apply make-struct-instance gx#import-expander::t _$args12107_)))
  (define gx#export-expander::t
    (make-struct-type
     'gx#export-expander::t
     gx#user-expander::t
     '0
     'export-expander
     '()
     ':init!))
  (define gx#export-expander? (make-struct-predicate gx#export-expander::t))
  (define gx#make-export-expander
    (lambda _$args12104_
      (apply make-struct-instance gx#export-expander::t _$args12104_)))
  (define gx#current-import-expander-phi (make-parameter '#f))
  (define gx#current-export-expander-phi (make-parameter '#f))
  (define gx#current-module-reader-path (make-parameter '#f))
  (define gx#current-module-reader-args (make-parameter '#f))
  (define gx#module-context:::init!
    (lambda (_self12098_ _id12099_ _super12100_ _ns12101_ _path12102_)
      (if (##fx< '11 (##vector-length _self12098_))
          (begin
            (##vector-set! _self12098_ '1 _id12099_)
            (##vector-set! _self12098_ '2 (make-hash-table-eq))
            (##vector-set! _self12098_ '3 _super12100_)
            (##vector-set! _self12098_ '4 '#f)
            (##vector-set! _self12098_ '5 '#f)
            (##vector-set! _self12098_ '6 _ns12101_)
            (##vector-set! _self12098_ '7 _path12102_)
            (##vector-set! _self12098_ '8 '())
            (##vector-set! _self12098_ '9 '())
            (##vector-set! _self12098_ '10 '#f)
            (##vector-set! _self12098_ '11 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self12098_))))
  (bind-method! gx#module-context::t ':init! gx#module-context:::init! '#f)
  (begin
    (define gx#prelude-context:::init!__opt-lambda12062
      (lambda (_self12064_ _ctx12065_ _root12066_)
        (let ((_super12074_
               (let ((_$e12068_ _root12066_))
                 (if _$e12068_
                     _$e12068_
                     (let ((_$e12071_ (gx#core-context-root__0)))
                       (if _$e12071_
                           _$e12071_
                           (make-struct-instance gx#root-context::t)))))))
          (if _ctx12065_
              (let ((_id12077_
                     (##structure-ref
                      _ctx12065_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_path12078_
                     (##structure-ref _ctx12065_ '7 gx#module-context::t '#f))
                    (_in12079_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _ctx12065_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_e12080_
                     (make-promise (lambda () (gx#eval-module _ctx12065_)))))
                (begin
                  (if (##fx< '8 (##vector-length _self12064_))
                      (begin
                        (##vector-set! _self12064_ '1 _id12077_)
                        (##vector-set! _self12064_ '2 (make-hash-table-eq))
                        (##vector-set! _self12064_ '3 _super12074_)
                        (##vector-set! _self12064_ '4 '#f)
                        (##vector-set! _self12064_ '5 '#f)
                        (##vector-set! _self12064_ '6 _path12078_)
                        (##vector-set! _self12064_ '7 _in12079_)
                        (##vector-set! _self12064_ '8 _e12080_))
                      (error '"struct-instance-init!: too many arguments for struct"
                             _self12064_))
                  (for-each
                   (lambda (_g1208112083_)
                     (gx#core-bind-weak-import!__opt-lambda11289
                      _g1208112083_
                      _self12064_))
                   _in12079_)))
              (if (##fx< '8 (##vector-length _self12064_))
                  (begin
                    (##vector-set! _self12064_ '1 '#f)
                    (##vector-set! _self12064_ '2 (make-hash-table-eq))
                    (##vector-set! _self12064_ '3 _super12074_)
                    (##vector-set! _self12064_ '4 '#f)
                    (##vector-set! _self12064_ '5 '#f)
                    (##vector-set! _self12064_ '6 '#f)
                    (##vector-set! _self12064_ '7 '())
                    (##vector-set! _self12064_ '8 '#f))
                  (error '"struct-instance-init!: too many arguments for struct"
                         _self12064_))))))
    (begin
      (define gx#prelude-context:::init!__0
        (lambda (_self12089_ _ctx12090_)
          (let ((_root12092_ '#f))
            (gx#prelude-context:::init!__opt-lambda12062
             _self12089_
             _ctx12090_
             _root12092_))))
      (define gx#prelude-context:::init!
        (lambda _g12135_
          (let ((_g12134_ (length _g12135_)))
            (cond ((fx= _g12134_ 2)
                   (apply gx#prelude-context:::init!__0 _g12135_))
                  ((fx= _g12134_ 3)
                   (apply gx#prelude-context:::init!__opt-lambda12062
                          _g12135_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#prelude-context:::init!
                    _g12135_))))))))
  (bind-method! gx#prelude-context::t ':init! gx#prelude-context:::init! '#f)
  (define gx#import-expander:::init!
    (lambda (_self12060_ _e12061_)
      (if (##fx< '3 (##vector-length _self12060_))
          (begin
            (##vector-set! _self12060_ '1 _e12061_)
            (##vector-set! _self12060_ '2 (gx#current-expander-context))
            (##vector-set! _self12060_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self12060_))))
  (bind-method! gx#import-expander::t ':init! gx#import-expander:::init! '#f)
  (define gx#export-expander:::init!
    (lambda (_self12057_ _e12058_)
      (if (##fx< '3 (##vector-length _self12057_))
          (begin
            (##vector-set! _self12057_ '1 _e12058_)
            (##vector-set! _self12057_ '2 (gx#current-expander-context))
            (##vector-set! _self12057_ '3 (fx- (gx#current-expander-phi) '1)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self12057_))))
  (bind-method! gx#export-expander::t ':init! gx#export-expander:::init! '#f)
  (define gx#import-expander::apply-import-expander
    (lambda (_g1204912052_ _g1205012054_)
      (gx#core-apply-user-expander__opt-lambda5286
       _g1204912052_
       _g1205012054_
       'apply-import-expander)))
  (bind-method!
   gx#import-expander::t
   'apply-import-expander
   gx#import-expander::apply-import-expander
   '#f)
  (define gx#export-expander::apply-export-expander
    (lambda (_g1204212045_ _g1204312047_)
      (gx#core-apply-user-expander__opt-lambda5286
       _g1204212045_
       _g1204312047_
       'apply-export-expander)))
  (bind-method!
   gx#export-expander::t
   'apply-export-expander
   gx#export-expander::apply-export-expander
   '#f)
  (define gx#module-source-path
    (lambda (_ctx12036_)
      (let* ((_path12038_
              (##structure-ref _ctx12036_ '7 gx#module-context::t '#f))
             (_path12040_
              (if (pair? _path12038_) (last _path12038_) _path12038_)))
        (if (string? _path12040_) _path12040_ '#f))))
  (begin
    (define gx#import-module__opt-lambda12010
      (lambda (_path12012_ _reload?12013_ _eval?12014_)
        (let ((_ctx12016_
               ((gx#current-expander-module-import)
                _path12012_
                _reload?12013_)))
          (begin
            (if (if _ctx12016_ _eval?12014_ '#f)
                (gx#eval-module _ctx12016_)
                '#!void)
            _ctx12016_))))
    (begin
      (define gx#import-module__0
        (lambda (_path12021_)
          (let* ((_reload?12023_ '#f) (_eval?12025_ '#f))
            (gx#import-module__opt-lambda12010
             _path12021_
             _reload?12023_
             _eval?12025_))))
      (define gx#import-module__1
        (lambda (_path12027_ _reload?12028_)
          (let ((_eval?12030_ '#f))
            (gx#import-module__opt-lambda12010
             _path12027_
             _reload?12028_
             _eval?12030_))))
      (define gx#import-module
        (lambda _g12137_
          (let ((_g12136_ (length _g12137_)))
            (cond ((fx= _g12136_ 1) (apply gx#import-module__0 _g12137_))
                  ((fx= _g12136_ 2) (apply gx#import-module__1 _g12137_))
                  ((fx= _g12136_ 3)
                   (apply gx#import-module__opt-lambda12010 _g12137_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#import-module
                    _g12137_))))))))
  (define gx#eval-module
    (lambda (_mod12009_) ((gx#current-expander-module-eval) _mod12009_)))
  (define gx#core-eval-module
    (lambda (_obj11994_)
      (letrec ((_force-e11996_
                (lambda (_getf12005_ _e12006_)
                  (call-with-parameters
                   (lambda () (force (_getf12005_ _e12006_)))
                   gx#current-expander-context
                   _e12006_
                   gx#current-expander-phi
                   '0))))
        (let _recur11998_ ((_e12000_ _obj11994_))
          (if (##structure-instance-of? _e12000_ 'gx#module-context::t)
              (begin
                (let ((_$e12002_
                       (gx#core-context-prelude__opt-lambda11975 _e12000_)))
                  (if _$e12002_ (_recur11998_ _$e12002_) '#!void))
                (_force-e11996_ gx#module-context-e _e12000_))
              (if (##structure-instance-of? _e12000_ 'gx#prelude-context::t)
                  (_force-e11996_ gx#prelude-context-e _e12000_)
                  (if (gx#stx-string? _e12000_)
                      (_recur11998_
                       (gx#import-module__0
                        (gx#core-resolve-module-path__0 _e12000_)))
                      (if (gx#core-library-module-path? _e12000_)
                          (_recur11998_
                           (gx#import-module__0
                            (gx#core-resolve-library-module-path _e12000_)))
                          (error '"Cannot eval module" _obj11994_)))))))))
  (begin
    (define gx#core-context-prelude__opt-lambda11975
      (lambda (_ctx11977_)
        (let _lp11979_ ((_e11981_ _ctx11977_))
          (if (let ((_$e11983_
                     (##structure-instance-of?
                      _e11981_
                      'gx#module-context::t)))
                (if _$e11983_
                    _$e11983_
                    (##structure-instance-of? _e11981_ 'gx#local-context::t)))
              (_lp11979_ (##structure-ref _e11981_ '3 gx#phi-context::t '#f))
              (if (##structure-instance-of? _e11981_ 'gx#prelude-context::t)
                  _e11981_
                  '#f)))))
    (begin
      (define gx#core-context-prelude__0
        (lambda ()
          (let ((_ctx11990_ (gx#current-expander-context)))
            (gx#core-context-prelude__opt-lambda11975 _ctx11990_))))
      (define gx#core-context-prelude
        (lambda _g12139_
          (let ((_g12138_ (length _g12139_)))
            (cond ((fx= _g12138_ 0)
                   (apply gx#core-context-prelude__0 _g12139_))
                  ((fx= _g12138_ 1)
                   (apply gx#core-context-prelude__opt-lambda11975 _g12139_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-context-prelude
                    _g12139_))))))))
  (define gx#core-module->prelude-context
    (lambda (_ctx11967_)
      (let* ((_ht11969_ (gx#current-expander-module-registry))
             (_$e11971_ (table-ref _ht11969_ _ctx11967_ '#f)))
        (if _$e11971_
            (values _$e11971_)
            (let ((_pre11974_
                   (let ((__obj12130 (make-object gx#prelude-context::t '8)))
                     (begin
                       (gx#prelude-context:::init!__0 __obj12130 _ctx11967_)
                       __obj12130))))
              (begin
                (table-set! _ht11969_ _ctx11967_ _pre11974_)
                _pre11974_))))))
  (begin
    (define gx#core-import-module__opt-lambda11846
      (lambda (_rpath11848_ _reload?11849_)
        (letrec ((_import-source11851_
                  (lambda (_path11936_)
                    (begin
                      (if (member _path11936_ (gx#current-expander-path))
                          (error '"Cyclic expansion" _path11936_)
                          '#!void)
                      (call-with-parameters
                       (lambda ()
                         (let ((_g12140_ (gx#core-read-module _path11936_)))
                           (begin
                             (let ((_g12141_ (values-count _g12140_)))
                               (if (not (fx= _g12141_ 4))
                                   (error "Context expects 4 values"
                                          _g12141_)))
                             (let ((_pre11939_ (values-ref _g12140_ 0))
                                   (_id11940_ (values-ref _g12140_ 1))
                                   (_ns11941_ (values-ref _g12140_ 2))
                                   (_body11942_ (values-ref _g12140_ 3)))
                               (let* ((_prelude11947_
                                       (if (##structure-instance-of?
                                            _pre11939_
                                            'gx#prelude-context::t)
                                           _pre11939_
                                           (if (##structure-instance-of?
                                                _pre11939_
                                                'gx#module-context::t)
                                               (gx#core-module->prelude-context
                                                _pre11939_)
                                               (if (string? _pre11939_)
                                                   (gx#core-module->prelude-context
                                                    (gx#core-import-module__0
                                                     _pre11939_))
                                                   (if (not _pre11939_)
                                                       (let ((_$e11944_
                                                              (gx#current-expander-module-prelude)))
                                                         (if _$e11944_
                                                             _$e11944_
                                                             (let ((__obj12131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (make-object gx#prelude-context::t '8)))
                       (begin
                         (gx#prelude-context:::init!__0 __obj12131 '#f)
                         __obj12131))))
               (error '"Cannot import module; unknown prelude"
                      _rpath11848_
                      _pre11939_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_ctx11949_
                                       (let ((__obj12132
                                              (make-object
                                               gx#module-context::t
                                               '11)))
                                         (begin
                                           (gx#module-context:::init!
                                            __obj12132
                                            _id11940_
                                            _prelude11947_
                                            _ns11941_
                                            _path11936_)
                                           __obj12132)))
                                      (_body11951_
                                       (gx#core-expand-module-begin
                                        _body11942_
                                        _ctx11949_))
                                      (_body11953_
                                       (gx#core-quote-syntax__opt-lambda4639
                                        (gx#core-cons '%#begin _body11951_)
                                        _path11936_
                                        _ctx11949_
                                        '())))
                                 (begin
                                   (##structure-set!
                                    _ctx11949_
                                    (make-promise
                                     (lambda () (gx#eval-syntax* _body11953_)))
                                    '10
                                    gx#module-context::t
                                    '#f)
                                   (##structure-set!
                                    _ctx11949_
                                    _body11953_
                                    '11
                                    gx#module-context::t
                                    '#f)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _path11936_
                                    _ctx11949_)
                                   (table-set!
                                    (gx#current-expander-module-registry)
                                    _id11940_
                                    _ctx11949_)
                                   _ctx11949_))))))
                       gx#current-expander-context
                       (gx#core-context-root__0)
                       gx#current-expander-marks
                       '()
                       gx#current-expander-phi
                       '0
                       gx#current-expander-path
                       (cons _path11936_ (gx#current-expander-path))
                       gx#current-import-expander-phi
                       '#f
                       gx#current-export-expander-phi
                       '#f))))
                 (_import-submodule11852_
                  (lambda (_rpath11864_)
                    (let* ((_rpath1186511872_ _rpath11864_)
                           (_E1186711876_
                            (lambda ()
                              (error '"No clause matching" _rpath1186511872_)))
                           (_K1186811924_
                            (lambda (_refs11879_ _origin11880_)
                              (let ((_ctx11882_
                                     (if _origin11880_
                                         (gx#core-import-module__opt-lambda11846
                                          _origin11880_
                                          _reload?11849_)
                                         (gx#current-expander-context))))
                                (let _lp11884_ ((_rest11886_ _refs11879_)
                                                (_ctx11887_ _ctx11882_))
                                  (let* ((_rest1188811896_ _rest11886_)
                                         (_E1189111900_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest1188811896_)))
                                         (_else1189011904_
                                          (lambda () _ctx11887_))
                                         (_K1189211912_
                                          (lambda (_rest11907_ _id11908_)
                                            (let ((_bind11910_
                                                   (gx#resolve-identifier__opt-lambda5250
                                                    _id11908_
                                                    '0
                                                    _ctx11887_)))
                                              (if (if (##structure-direct-instance-of?
                                                       _bind11910_
                                                       'gx#syntax-binding::t)
                                                      (##structure-instance-of?
                                                       (##direct-structure-ref
                                                        _bind11910_
                                                        '4
                                                        gx#syntax-binding::t
                                                        '#f)
                                                       'gx#module-context::t)
                                                      '#f)
                                                  (_lp11884_
                                                   _rest11907_
                                                   (##direct-structure-ref
                                                    _bind11910_
                                                    '4
                                                    gx#syntax-binding::t
                                                    '#f))
                                                  (error '"Cannot import submodule; not bound as a module"
                                                         _rpath11864_
                                                         _id11908_
                                                         _bind11910_))))))
                                    (if (##pair? _rest1188811896_)
                                        (let ((_hd1189311915_
                                               (##car _rest1188811896_))
                                              (_tl1189411917_
                                               (##cdr _rest1188811896_)))
                                          (let* ((_id11920_ _hd1189311915_)
                                                 (_rest11922_ _tl1189411917_))
                                            (_K1189211912_
                                             _rest11922_
                                             _id11920_)))
                                        (_else1189011904_))))))))
                      (if (##pair? _rpath1186511872_)
                          (let ((_hd1186911927_ (##car _rpath1186511872_))
                                (_tl1187011929_ (##cdr _rpath1186511872_)))
                            (let* ((_origin11932_ _hd1186911927_)
                                   (_refs11934_ _tl1187011929_))
                              (_K1186811924_ _refs11934_ _origin11932_)))
                          (_E1186711876_))))))
          (let ((_$e11854_
                 (if (not _reload?11849_)
                     (table-ref
                      (gx#current-expander-module-registry)
                      _rpath11848_
                      '#f)
                     '#f)))
            (if _$e11854_
                (values _$e11854_)
                (if (list? _rpath11848_)
                    (_import-submodule11852_ _rpath11848_)
                    (if (gx#core-library-module-path? _rpath11848_)
                        (let ((_ctx11857_
                               (gx#core-import-module__opt-lambda11846
                                (gx#core-resolve-library-module-path
                                 _rpath11848_)
                                _reload?11849_)))
                          (begin
                            (table-set!
                             (gx#current-expander-module-registry)
                             _rpath11848_
                             _ctx11857_)
                            _ctx11857_))
                        (let* ((_npath11859_ (path-normalize _rpath11848_))
                               (_$e11861_
                                (if (not _reload?11849_)
                                    (table-ref
                                     (gx#current-expander-module-registry)
                                     _npath11859_
                                     '#f)
                                    '#f)))
                          (if _$e11861_
                              (values _$e11861_)
                              (_import-source11851_ _npath11859_))))))))))
    (begin
      (define gx#core-import-module__0
        (lambda (_rpath11960_)
          (let ((_reload?11962_ '#f))
            (gx#core-import-module__opt-lambda11846
             _rpath11960_
             _reload?11962_))))
      (define gx#core-import-module
        (lambda _g12143_
          (let ((_g12142_ (length _g12143_)))
            (cond ((fx= _g12142_ 1) (apply gx#core-import-module__0 _g12143_))
                  ((fx= _g12142_ 2)
                   (apply gx#core-import-module__opt-lambda11846 _g12143_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-import-module
                    _g12143_))))))))
  (define gx#core-read-module
    (lambda (_path11842_)
      (with-exception-catcher
       (lambda (_exn11844_)
         (if (if (datum-parsing-exception? _exn11844_)
                 (eq? (datum-parsing-exception-filepos _exn11844_) '0)
                 '#f)
             (gx#core-read-module/lang _path11842_)
             (raise _exn11844_)))
       (lambda () (gx#core-read-module/sexp _path11842_)))))
  (define gx#core-read-module/sexp
    (lambda (_path11702_)
      (let _lp11704_ ((_body11706_ (read-syntax-from-file _path11702_))
                      (_pre11707_ '#f)
                      (_ns11708_ '#f)
                      (_pkg11709_ '#f))
        (let* ((_e1171011734_ _body11706_)
               (_E1172611756_
                (lambda ()
                  (let ((_g12144_
                         (if _pkg11709_
                             (values _pre11707_ _ns11708_ _pkg11709_)
                             (gx#core-read-module-package
                              _path11702_
                              _pre11707_
                              _ns11708_))))
                    (begin
                      (let ((_g12145_ (values-count _g12144_)))
                        (if (not (fx= _g12145_ 3))
                            (error "Context expects 3 values" _g12145_)))
                      (let ((_pre11738_ (values-ref _g12144_ 0))
                            (_ns11739_ (values-ref _g12144_ 1))
                            (_pkg11740_ (values-ref _g12144_ 2)))
                        (let* ((_prelude11742_
                                (if (gx#core-bound-module-prelude? _pre11738_)
                                    (gx#syntax-local-e__0 _pre11738_)
                                    (if (gx#core-library-module-path?
                                         _pre11738_)
                                        (gx#core-resolve-library-module-path
                                         _pre11738_)
                                        (if (gx#stx-string? _pre11738_)
                                            (gx#core-resolve-module-path__opt-lambda11465
                                             _pre11738_
                                             _path11702_)
                                            (gx#stx-e _pre11738_)))))
                               (_path-id11744_
                                (gx#core-module-path->namespace _path11702_))
                               (_pkg-id11746_
                                (if _pkg11740_
                                    (string-append
                                     _pkg11740_
                                     '"/"
                                     _path-id11744_)
                                    _path-id11744_))
                               (_module-id11748_
                                (string->symbol _pkg-id11746_))
                               (_module-ns11753_
                                (let ((_$e11750_ _ns11739_))
                                  (if _$e11750_ _$e11750_ _pkg-id11746_))))
                          (values _prelude11742_
                                  _module-id11748_
                                  _module-ns11753_
                                  _body11706_)))))))
               (_E1171911785_
                (lambda ()
                  (if (gx#stx-pair? _e1171011734_)
                      (let ((_e1172711760_ (gx#syntax-e _e1171011734_)))
                        (let ((_hd1172811763_ (##car _e1172711760_))
                              (_tl1172911765_ (##cdr _e1172711760_)))
                          (if (eq? (gx#stx-e _hd1172811763_) 'package:)
                              (if (gx#stx-pair? _tl1172911765_)
                                  (let ((_e1173011768_
                                         (gx#syntax-e _tl1172911765_)))
                                    (let ((_hd1173111771_
                                           (##car _e1173011768_))
                                          (_tl1173211773_
                                           (##cdr _e1173011768_)))
                                      (let* ((_pkg11776_ _hd1173111771_)
                                             (_rest11778_ _tl1173211773_))
                                        (if '#t
                                            (let ((_pkg11783_
                                                   (if (gx#identifier?
                                                        _pkg11776_)
                                                       (symbol->string
                                                        (gx#stx-e _pkg11776_))
                                                       (if (let ((_$e11780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _pkg11776_)))
                     (if _$e11780_ _$e11780_ (gx#stx-false? _pkg11776_)))
                   (gx#stx-e _pkg11776_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; Illegal package name"
                    _pkg11776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp11704_
                                               _rest11778_
                                               _pre11707_
                                               _ns11708_
                                               _pkg11783_))
                                            (_E1172611756_)))))
                                  (_E1172611756_))
                              (_E1172611756_))))
                      (_E1172611756_))))
               (_E1171211814_
                (lambda ()
                  (if (gx#stx-pair? _e1171011734_)
                      (let ((_e1172011789_ (gx#syntax-e _e1171011734_)))
                        (let ((_hd1172111792_ (##car _e1172011789_))
                              (_tl1172211794_ (##cdr _e1172011789_)))
                          (if (eq? (gx#stx-e _hd1172111792_) 'namespace:)
                              (if (gx#stx-pair? _tl1172211794_)
                                  (let ((_e1172311797_
                                         (gx#syntax-e _tl1172211794_)))
                                    (let ((_hd1172411800_
                                           (##car _e1172311797_))
                                          (_tl1172511802_
                                           (##cdr _e1172311797_)))
                                      (let* ((_ns11805_ _hd1172411800_)
                                             (_rest11807_ _tl1172511802_))
                                        (if '#t
                                            (let ((_ns11812_
                                                   (if (gx#identifier?
                                                        _ns11805_)
                                                       (symbol->string
                                                        (gx#stx-e _ns11805_))
                                                       (if (let ((_$e11809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-string? _ns11805_)))
                     (if _$e11809_ _$e11809_ (gx#stx-false? _ns11805_)))
                   (gx#stx-e _ns11805_)
                   (gx#raise-syntax-error
                    'import
                    '"Bad syntax; illegal namespace"
                    _ns11805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_lp11704_
                                               _rest11807_
                                               _pre11707_
                                               _ns11812_
                                               _pkg11709_))
                                            (_E1171911785_)))))
                                  (_E1171911785_))
                              (_E1171911785_))))
                      (_E1171911785_))))
               (_E1171111838_
                (lambda ()
                  (if (gx#stx-pair? _e1171011734_)
                      (let ((_e1171311818_ (gx#syntax-e _e1171011734_)))
                        (let ((_hd1171411821_ (##car _e1171311818_))
                              (_tl1171511823_ (##cdr _e1171311818_)))
                          (if (eq? (gx#stx-e _hd1171411821_) 'prelude:)
                              (if (gx#stx-pair? _tl1171511823_)
                                  (let ((_e1171611826_
                                         (gx#syntax-e _tl1171511823_)))
                                    (let ((_hd1171711829_
                                           (##car _e1171611826_))
                                          (_tl1171811831_
                                           (##cdr _e1171611826_)))
                                      (let* ((_prelude11834_ _hd1171711829_)
                                             (_rest11836_ _tl1171811831_))
                                        (if '#t
                                            (_lp11704_
                                             _rest11836_
                                             _prelude11834_
                                             _ns11708_
                                             _pkg11709_)
                                            (_E1171211814_)))))
                                  (_E1171211814_))
                              (_E1171211814_))))
                      (_E1171211814_)))))
          (_E1171111838_)))))
  (define gx#core-read-module/lang
    (lambda (_path11538_)
      (letrec ((_read-body11540_
                (lambda (_inp11621_
                         _pre11622_
                         _ns11623_
                         _pkg11624_
                         _args11625_)
                  (let ((_g12146_
                         (if _pkg11624_
                             (values _pre11622_ _ns11623_ _pkg11624_)
                             (gx#core-read-module-package
                              _path11538_
                              _pre11622_
                              _ns11623_))))
                    (begin
                      (let ((_g12147_ (values-count _g12146_)))
                        (if (not (fx= _g12147_ 3))
                            (error "Context expects 3 values" _g12147_)))
                      (let ((_pre11627_ (values-ref _g12146_ 0))
                            (_ns11628_ (values-ref _g12146_ 1))
                            (_pkg11629_ (values-ref _g12146_ 2)))
                        (let* ((_prelude11631_
                                (gx#import-module__0 _pre11627_))
                               (_read-module-body11685_
                                (let ((_$e11677_
                                       (find (lambda (_e1163211634_)
                                               (let* ((_g1163611646_
                                                       _e1163211634_)
                                                      (_E1163911650_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _g1163611646_)))
                                                      (_else1163811654_
                                                       (lambda () '#f))
                                                      (_K1164011658_
                                                       (lambda () '#t)))
                                                 (if (##structure-direct-instance-of?
                                                      _g1163611646_
                                                      (##type-id
                                                       gx#module-export::t))
                                                     (let* ((_e1164111661_
                                                             (##vector-ref
                                                              _g1163611646_
                                                              '1))
                                                            (_e1164211664_
                                                             (##vector-ref
                                                              _g1163611646_
                                                              '2))
                                                            (_e1164311667_
                                                             (##vector-ref
                                                              _g1163611646_
                                                              '3)))
                                                       (if (##eq? _e1164311667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)
                   (let ((_e1164411670_ (##vector-ref _g1163611646_ '4)))
                     (if ((lambda (_g1167211674_)
                            (eq? _g1167211674_ 'read-module-body))
                          _e1164411670_)
                         (_K1164011658_)
                         (_else1163811654_)))
                   (_else1163811654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1163811654_))))
                                             (##structure-ref
                                              _prelude11631_
                                              '9
                                              gx#module-context::t
                                              '#f))))
                                  (if _$e11677_
                                      ((lambda (_xport11680_)
                                         (let ((_proc11683_
                                                (with-exception-catcher
                                                 void
                                                 (lambda ()
                                                   (gx#eval-syntax__0
                                                    (##structure-ref
                                                     (gx#core-resolve-module-export
                                                      _xport11680_)
                                                     '1
                                                     gx#binding::t
                                                     '#f))))))
                                           (if (procedure? _proc11683_)
                                               _proc11683_
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Illegal #lang prelude; read-module-body is not a procedure"
                                                _path11538_
                                                _pre11627_
                                                _proc11683_))))
                                       _$e11677_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Illegal #lang prelude; does not export read-module-body for syntax"
                                       _path11538_
                                       _pre11627_))))
                               (_path-id11687_
                                (gx#core-module-path->namespace _path11538_))
                               (_pkg-id11689_
                                (if _pkg11629_
                                    (string-append
                                     _pkg11629_
                                     '"/"
                                     _path-id11687_)
                                    _path-id11687_))
                               (_module-id11691_
                                (string->symbol _pkg-id11689_))
                               (_module-ns11696_
                                (let ((_$e11693_ _ns11628_))
                                  (if _$e11693_ _$e11693_ _pkg-id11689_)))
                               (_body11699_
                                (call-with-parameters
                                 (lambda ()
                                   (_read-module-body11685_ _inp11621_))
                                 gx#current-module-reader-path
                                 _path11538_
                                 gx#current-module-reader-args
                                 _args11625_)))
                          (values _prelude11631_
                                  _module-id11691_
                                  _module-ns11696_
                                  _body11699_)))))))
               (_string-e11541_
                (lambda (_obj11618_ _what11619_)
                  (if (string? _obj11618_)
                      _obj11618_
                      (if (symbol? _obj11618_)
                          (symbol->string _obj11618_)
                          (gx#raise-syntax-error
                           '#f
                           (string-append '"Illegal module " _what11619_)
                           _path11538_
                           _obj11618_)))))
               (_read-lang-args11542_
                (lambda (_inp11573_ _args11574_)
                  (let* ((_args1157511583_ _args11574_)
                         (_E1157811587_
                          (lambda ()
                            (error '"No clause matching" _args1157511583_)))
                         (_else1157711591_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Illegal #lang arguments; missing prelude"
                             _path11538_)))
                         (_K1157911606_
                          (lambda (_args11594_ _prelude11595_)
                            (let* ((_pkg11597_ (pgetq 'package: _args11594_))
                                   (_pkg11599_
                                    (if _pkg11597_
                                        (_string-e11541_ _pkg11597_ '"package")
                                        '#f))
                                   (_ns11601_ (pgetq 'namespace: _args11594_))
                                   (_ns11603_
                                    (if _ns11601_
                                        (_string-e11541_
                                         _ns11601_
                                         '"namespace")
                                        '#f)))
                              (_read-body11540_
                               _inp11573_
                               _prelude11595_
                               _ns11603_
                               _pkg11599_
                               _args11594_)))))
                    (if (##pair? _args1157511583_)
                        (let ((_hd1158011609_ (##car _args1157511583_))
                              (_tl1158111611_ (##cdr _args1157511583_)))
                          (let* ((_prelude11614_ _hd1158011609_)
                                 (_args11616_ _tl1158111611_))
                            (_K1157911606_ _args11616_ _prelude11614_)))
                        (_else1157711591_)))))
               (_read-lang11543_
                (lambda (_inp11548_)
                  (let* ((_head11550_ (read-line _inp11548_))
                         (_$e11552_ (string-index _head11550_ '#\space)))
                    (if _$e11552_
                        ((lambda (_ix11555_)
                           (let ((_lang11557_
                                  (substring _head11550_ '0 _ix11555_)))
                             (if (equal? _lang11557_ '"#lang")
                                 (let* ((_rest11559_
                                         (substring
                                          _head11550_
                                          (fx+ _ix11555_ '1)
                                          (string-length _head11550_)))
                                        (_args11570_
                                         (with-exception-catcher
                                          (lambda (_g1156011562_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal #lang arguments"
                                             _path11538_
                                             _g1156011562_))
                                          (lambda ()
                                            (call-with-input-string
                                             _rest11559_
                                             (lambda (_g1156511567_)
                                               (read-all
                                                _g1156511567_
                                                read)))))))
                                   (_read-lang-args11542_
                                    _inp11548_
                                    _args11570_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Illegal module syntax"
                                  _path11538_))))
                         _$e11552_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _path11538_)))))
               (_read-e11544_
                (lambda (_inp11546_)
                  (if (eq? (peek-char _inp11546_) '#\#)
                      (_read-lang11543_ _inp11546_)
                      (gx#raise-syntax-error
                       '#f
                       '"Illegal module syntax"
                       _path11538_)))))
        (call-with-input-file _path11538_ _read-e11544_))))
  (define gx#core-read-module-package
    (lambda (_path11492_ _pre11493_ _ns11494_)
      (letrec ((_string-e11496_
                (lambda (_e11536_)
                  (if (symbol? _e11536_)
                      (symbol->string _e11536_)
                      (if (string? _e11536_)
                          _e11536_
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _e11536_))))))
        (let _lp11498_ ((_dir11500_ (path-directory _path11492_))
                        (_pkg-path11501_ '()))
          (let ((_gerbil.pkg11503_ (path-expand '"gerbil.pkg" _dir11500_)))
            (if (file-exists? _gerbil.pkg11503_)
                (let ((_plist11505_
                       (call-with-input-file _gerbil.pkg11503_ read)))
                  (if (eof-object? _plist11505_)
                      (let ((_pkg11507_
                             (if (not (null? _pkg-path11501_))
                                 (string-join _pkg-path11501_ '"/")
                                 '#f)))
                        (values _pre11493_ _ns11494_ _pkg11507_))
                      (if (list? _plist11505_)
                          (let* ((_root11509_ (pgetq 'package: _plist11505_))
                                 (_pkg11513_
                                  (let ((_pkg-path11511_
                                         (if _root11509_
                                             (cons (_string-e11496_
                                                    _root11509_)
                                                   _pkg-path11501_)
                                             _pkg-path11501_)))
                                    (if (not (null? _pkg-path11511_))
                                        (string-join _pkg-path11511_ '"/")
                                        '#f)))
                                 (_ns11520_
                                  (let ((_ns11518_
                                         (let ((_$e11515_ _ns11494_))
                                           (if _$e11515_
                                               _$e11515_
                                               (pgetq 'namespace:
                                                      _plist11505_)))))
                                    (if _ns11518_
                                        (_string-e11496_ _ns11518_)
                                        '#f)))
                                 (_pre11525_
                                  (let ((_$e11522_ _pre11493_))
                                    (if _$e11522_
                                        _$e11522_
                                        (pgetq 'prelude: _plist11505_)))))
                            (values _pre11525_ _ns11520_ _pkg11513_))
                          (gx#raise-syntax-error
                           '#f
                           '"Malformed package info; unexpected datum"
                           _plist11505_))))
                (let ((_dir*11528_
                       (path-strip-trailing-directory-separator _dir11500_)))
                  (if (let ((_$e11530_ (string-empty? _dir*11528_)))
                        (if _$e11530_
                            _$e11530_
                            (equal? _dir11500_ _dir*11528_)))
                      (values _pre11493_ _ns11494_ '#f)
                      (let ((_xpath11533_ (path-strip-directory _dir*11528_))
                            (_xdir11534_ (path-directory _dir*11528_)))
                        (_lp11498_
                         _xdir11534_
                         (cons _xpath11533_ _pkg-path11501_)))))))))))
  (define gx#core-module-path->namespace
    (lambda (_path11490_)
      (path-strip-extension (path-strip-directory _path11490_))))
  (define gx#core-module-path->id
    (lambda (_path11488_)
      (string->symbol (gx#core-module-path->namespace _path11488_))))
  (begin
    (define gx#core-resolve-module-path__opt-lambda11465
      (lambda (_stx-path11467_ _rel11468_)
        (let* ((_path11470_ (gx#stx-e _stx-path11467_))
               (_path11472_
                (if (string-empty? (path-extension _path11470_))
                    (string-append _path11470_ '".ss")
                    _path11470_)))
          (gx#core-resolve-path__opt-lambda4603
           _path11472_
           (let ((_$e11475_ (gx#stx-source _stx-path11467_)))
             (if _$e11475_ _$e11475_ _rel11468_))))))
    (begin
      (define gx#core-resolve-module-path__0
        (lambda (_stx-path11481_)
          (let ((_rel11483_ '#f))
            (gx#core-resolve-module-path__opt-lambda11465
             _stx-path11481_
             _rel11483_))))
      (define gx#core-resolve-module-path
        (lambda _g12149_
          (let ((_g12148_ (length _g12149_)))
            (cond ((fx= _g12148_ 1)
                   (apply gx#core-resolve-module-path__0 _g12149_))
                  ((fx= _g12148_ 2)
                   (apply gx#core-resolve-module-path__opt-lambda11465
                          _g12149_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-resolve-module-path
                    _g12149_))))))))
  (define gx#core-resolve-library-module-path
    (lambda (_libpath11407_)
      (let* ((_spath11409_ (symbol->string (gx#stx-e _libpath11407_)))
             (_spath11411_
              (substring _spath11409_ '1 (string-length _spath11409_)))
             (_ext11413_ (path-extension _spath11411_))
             (_ssi11415_
              (if (string-empty? _ext11413_)
                  (string-append _spath11411_ '".ssi")
                  (string-append (path-strip-extension _spath11411_) '".ssi")))
             (_src11417_
              (if (string-empty? _ext11413_)
                  (string-append _spath11411_ '".ss")
                  _spath11411_)))
        (let _lp11420_ ((_rest11422_
                         (gx#current-expander-module-library-path)))
          (let* ((_rest1142311432_ _rest11422_)
                 (_E1142611436_
                  (lambda () (error '"No clause matching" _rest1142311432_)))
                 (_try-match1142511444_
                  (lambda ()
                    (let ((_K1142711441_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Cannot find library module"
                              _libpath11407_))))
                      (if (##null? _rest1142311432_)
                          (_K1142711441_)
                          (_E1142611436_)))))
                 (_K1142811454_
                  (lambda (_rest11447_ _dir11448_)
                    (let ((_compiled-path11450_
                           (path-expand _ssi11415_ _dir11448_)))
                      (if (file-exists? _compiled-path11450_)
                          (path-normalize _compiled-path11450_)
                          (let ((_src-path11452_
                                 (path-expand _src11417_ _dir11448_)))
                            (if (file-exists? _src-path11452_)
                                (path-normalize _src-path11452_)
                                (_lp11420_ _rest11447_))))))))
            (if (##pair? _rest1142311432_)
                (let ((_hd1142911457_ (##car _rest1142311432_))
                      (_tl1143011459_ (##cdr _rest1142311432_)))
                  (let* ((_dir11462_ _hd1142911457_)
                         (_rest11464_ _tl1143011459_))
                    (_K1142811454_ _rest11464_ _dir11462_)))
                (_try-match1142511444_)))))))
  (define gx#core-library-module-path?
    (lambda (_stx11405_) (gx#core-special-module-path? _stx11405_ '#\:)))
  (define gx#core-special-module-path?
    (lambda (_stx11400_ _char11401_)
      (if (gx#identifier? _stx11400_)
          (if (interned-symbol? (gx#stx-e _stx11400_))
              (let ((_str11403_ (symbol->string (gx#stx-e _stx11400_))))
                (if (fx> (string-length _str11403_) '1)
                    (eq? (string-ref _str11403_ '0) _char11401_)
                    '#f))
              '#f)
          '#f)))
  (define gx#core-bound-prelude?
    (lambda (_stx11394_)
      (gx#core-bound-identifier?__opt-lambda4693
       _stx11394_
       (lambda (_g1139511397_)
         (gx#expander-binding?__opt-lambda4730
          _g1139511397_
          gx#prelude-context?)))))
  (define gx#core-bound-module?
    (lambda (_stx11388_)
      (gx#core-bound-identifier?__opt-lambda4693
       _stx11388_
       (lambda (_g1138911391_)
         (gx#expander-binding?__opt-lambda4730
          _g1138911391_
          gx#module-context?)))))
  (define gx#core-bound-module-prelude?
    (lambda (_stx11375_)
      (letrec ((_module-prelude?11377_
                (lambda (_e11383_)
                  (let ((_$e11385_
                         (##structure-instance-of?
                          _e11383_
                          'gx#module-context::t)))
                    (if _$e11385_
                        _$e11385_
                        (##structure-instance-of?
                         _e11383_
                         'gx#prelude-context::t))))))
        (gx#core-bound-identifier?__opt-lambda4693
         _stx11375_
         (lambda (_g1137811380_)
           (gx#expander-binding?__opt-lambda4730
            _g1137811380_
            _module-prelude?11377_))))))
  (begin
    (define gx#core-bind-import!__opt-lambda11303
      (lambda (_in11305_ _ctx11306_ _force-weak?11307_)
        (let* ((_in1130811317_ _in11305_)
               (_E1131011321_
                (lambda () (error '"No clause matching" _in1130811317_)))
               (_K1131111334_
                (lambda (_weak?11324_ _phi11325_ _key11326_ _source11327_)
                  (gx#core-bind!__opt-lambda4969
                   _key11326_
                   (let ((_e11329_
                          (gx#core-resolve-module-export _source11327_)))
                     (##structure
                      gx#import-binding::t
                      (##structure-ref _e11329_ '1 gx#binding::t '#f)
                      _key11326_
                      _phi11325_
                      _e11329_
                      (##direct-structure-ref
                       _source11327_
                       '1
                       gx#module-export::t
                       '#f)
                      (let ((_$e11331_ _force-weak?11307_))
                        (if _$e11331_ _$e11331_ _weak?11324_))))
                   gx#core-context-rebind?
                   _phi11325_
                   _ctx11306_))))
          (if (##structure-direct-instance-of?
               _in1130811317_
               (##type-id gx#module-import::t))
              (let* ((_e1131211337_ (##vector-ref _in1130811317_ '1))
                     (_source11340_ _e1131211337_)
                     (_e1131311342_ (##vector-ref _in1130811317_ '2))
                     (_key11345_ _e1131311342_)
                     (_e1131411347_ (##vector-ref _in1130811317_ '3))
                     (_phi11350_ _e1131411347_)
                     (_e1131511352_ (##vector-ref _in1130811317_ '4))
                     (_weak?11355_ _e1131511352_))
                (_K1131111334_
                 _weak?11355_
                 _phi11350_
                 _key11345_
                 _source11340_))
              (_E1131011321_)))))
    (begin
      (define gx#core-bind-import!__0
        (lambda (_in11360_)
          (let* ((_ctx11362_ (gx#current-expander-context))
                 (_force-weak?11364_ '#f))
            (gx#core-bind-import!__opt-lambda11303
             _in11360_
             _ctx11362_
             _force-weak?11364_))))
      (define gx#core-bind-import!__1
        (lambda (_in11366_ _ctx11367_)
          (let ((_force-weak?11369_ '#f))
            (gx#core-bind-import!__opt-lambda11303
             _in11366_
             _ctx11367_
             _force-weak?11369_))))
      (define gx#core-bind-import!
        (lambda _g12151_
          (let ((_g12150_ (length _g12151_)))
            (cond ((fx= _g12150_ 1) (apply gx#core-bind-import!__0 _g12151_))
                  ((fx= _g12150_ 2) (apply gx#core-bind-import!__1 _g12151_))
                  ((fx= _g12150_ 3)
                   (apply gx#core-bind-import!__opt-lambda11303 _g12151_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-import!
                    _g12151_))))))))
  (begin
    (define gx#core-bind-weak-import!__opt-lambda11289
      (lambda (_in11291_ _ctx11292_)
        (gx#core-bind-import!__opt-lambda11303 _in11291_ _ctx11292_ '#t)))
    (begin
      (define gx#core-bind-weak-import!__0
        (lambda (_in11297_)
          (let ((_ctx11299_ (gx#current-expander-context)))
            (gx#core-bind-weak-import!__opt-lambda11289
             _in11297_
             _ctx11299_))))
      (define gx#core-bind-weak-import!
        (lambda _g12153_
          (let ((_g12152_ (length _g12153_)))
            (cond ((fx= _g12152_ 1)
                   (apply gx#core-bind-weak-import!__0 _g12153_))
                  ((fx= _g12152_ 2)
                   (apply gx#core-bind-weak-import!__opt-lambda11289 _g12153_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-weak-import!
                    _g12153_))))))))
  (define gx#core-resolve-module-export
    (lambda (_out11182_)
      (letrec ((_subst11184_
                (lambda (_key11230_)
                  (let* ((_key1123111239_ _key11230_)
                         (_E1123411243_
                          (lambda ()
                            (error '"No clause matching" _key1123111239_)))
                         (_else1123311247_ (lambda () _key11230_))
                         (_K1123511278_
                          (lambda (_mark11250_ _id11251_)
                            (let* ((_mark1125211258_ _mark11250_)
                                   (_E1125411262_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _mark1125211258_)))
                                   (_K1125511270_
                                    (lambda (_subst11265_)
                                      (let ((_$e11267_
                                             (if _subst11265_
                                                 (table-ref
                                                  _subst11265_
                                                  _id11251_
                                                  '#f)
                                                 '#f)))
                                        (if _$e11267_
                                            _$e11267_
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Illegal key; missing substitution"
                                             _key11230_))))))
                              (if (##structure-instance-of?
                                   _mark1125211258_
                                   (##type-id gx#expander-mark::t))
                                  (let* ((_e1125611273_
                                          (##vector-ref _mark1125211258_ '1))
                                         (_subst11276_ _e1125611273_))
                                    (_K1125511270_ _subst11276_))
                                  (_E1125411262_))))))
                    (if (##pair? _key1123111239_)
                        (let ((_hd1123611281_ (##car _key1123111239_))
                              (_tl1123711283_ (##cdr _key1123111239_)))
                          (let* ((_id11286_ _hd1123611281_)
                                 (_mark11288_ _tl1123711283_))
                            (_K1123511278_ _mark11288_ _id11286_)))
                        (_else1123311247_))))))
        (let* ((_out1118511195_ _out11182_)
               (_E1118711199_
                (lambda () (error '"No clause matching" _out1118511195_)))
               (_K1118811206_
                (lambda (_phi11202_ _key11203_ _ctx11204_)
                  (gx#core-context-resolve
                   (gx#core-context-shift _ctx11204_ _phi11202_)
                   (_subst11184_ _key11203_)))))
          (if (##structure-direct-instance-of?
               _out1118511195_
               (##type-id gx#module-export::t))
              (let* ((_e1118911209_ (##vector-ref _out1118511195_ '1))
                     (_ctx11212_ _e1118911209_)
                     (_e1119011214_ (##vector-ref _out1118511195_ '2))
                     (_key11217_ _e1119011214_)
                     (_e1119111219_ (##vector-ref _out1118511195_ '3))
                     (_phi11222_ _e1119111219_)
                     (_e1119211224_ (##vector-ref _out1118511195_ '4))
                     (_e1119311227_ (##vector-ref _out1118511195_ '5)))
                (_K1118811206_ _phi11222_ _key11217_ _ctx11212_))
              (_E1118711199_))))))
  (begin
    (define gx#core-module-export->import__opt-lambda11105
      (lambda (_out11107_ _rename11108_ _dphi11109_)
        (let* ((_out1111011120_ _out11107_)
               (_E1111211124_
                (lambda () (error '"No clause matching" _out1111011120_)))
               (_K1111311136_
                (lambda (_weak?11127_
                         _name11128_
                         _phi11129_
                         _key11130_
                         _ctx11131_)
                  (##structure
                   gx#module-import::t
                   _out11107_
                   (let ((_$e11133_ _rename11108_))
                     (if _$e11133_ _$e11133_ _name11128_))
                   (fx+ _phi11129_ _dphi11109_)
                   _weak?11127_))))
          (if (##structure-direct-instance-of?
               _out1111011120_
               (##type-id gx#module-export::t))
              (let* ((_e1111411139_ (##vector-ref _out1111011120_ '1))
                     (_ctx11142_ _e1111411139_)
                     (_e1111511144_ (##vector-ref _out1111011120_ '2))
                     (_key11147_ _e1111511144_)
                     (_e1111611149_ (##vector-ref _out1111011120_ '3))
                     (_phi11152_ _e1111611149_)
                     (_e1111711154_ (##vector-ref _out1111011120_ '4))
                     (_name11157_ _e1111711154_)
                     (_e1111811159_ (##vector-ref _out1111011120_ '5))
                     (_weak?11162_ _e1111811159_))
                (_K1111311136_
                 _weak?11162_
                 _name11157_
                 _phi11152_
                 _key11147_
                 _ctx11142_))
              (_E1111211124_)))))
    (begin
      (define gx#core-module-export->import__0
        (lambda (_out11167_)
          (let* ((_rename11169_ '#f) (_dphi11171_ '0))
            (gx#core-module-export->import__opt-lambda11105
             _out11167_
             _rename11169_
             _dphi11171_))))
      (define gx#core-module-export->import__1
        (lambda (_out11173_ _rename11174_)
          (let ((_dphi11176_ '0))
            (gx#core-module-export->import__opt-lambda11105
             _out11173_
             _rename11174_
             _dphi11176_))))
      (define gx#core-module-export->import
        (lambda _g12155_
          (let ((_g12154_ (length _g12155_)))
            (cond ((fx= _g12154_ 1)
                   (apply gx#core-module-export->import__0 _g12155_))
                  ((fx= _g12154_ 2)
                   (apply gx#core-module-export->import__1 _g12155_))
                  ((fx= _g12154_ 3)
                   (apply gx#core-module-export->import__opt-lambda11105
                          _g12155_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-module-export->import
                    _g12155_))))))))
  (define gx#core-expand-module%
    (lambda (_stx11035_)
      (letrec ((_make-context11037_
                (lambda (_id11088_)
                  (let* ((_super11090_ (gx#current-expander-context))
                         (_bind-id11092_ (gx#stx-e _id11088_))
                         (_mod-id11094_
                          (if (##structure-instance-of?
                               _super11090_
                               'gx#module-context::t)
                              (make-symbol
                               (##structure-ref
                                _super11090_
                                '1
                                gx#expander-context::t
                                '#f)
                               '"$"
                               _bind-id11092_)
                              _bind-id11092_))
                         (_ns11096_ (symbol->string _mod-id11094_))
                         (_path11103_
                          (if (##structure-instance-of?
                               _super11090_
                               'gx#module-context::t)
                              (let ((_path11098_
                                     (##structure-ref
                                      _super11090_
                                      '7
                                      gx#module-context::t
                                      '#f)))
                                (if (let ((_$e11100_ (pair? _path11098_)))
                                      (if _$e11100_
                                          _$e11100_
                                          (null? _path11098_)))
                                    (cons _bind-id11092_ _path11098_)
                                    (if (not _path11098_)
                                        _bind-id11092_
                                        (cons _bind-id11092_
                                              (cons _path11098_ '())))))
                              _bind-id11092_)))
                    (let ((__obj12133 (make-object gx#module-context::t '11)))
                      (begin
                        (gx#module-context:::init!
                         __obj12133
                         _mod-id11094_
                         _super11090_
                         _ns11096_
                         _path11103_)
                        __obj12133))))))
        (let* ((_e1103811048_ _stx11035_)
               (_E1104011052_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1103811048_)))
               (_E1103911084_
                (lambda ()
                  (if (gx#stx-pair? _e1103811048_)
                      (let ((_e1104111056_ (gx#syntax-e _e1103811048_)))
                        (let ((_hd1104211059_ (##car _e1104111056_))
                              (_tl1104311061_ (##cdr _e1104111056_)))
                          (if (gx#stx-pair? _tl1104311061_)
                              (let ((_e1104411064_
                                     (gx#syntax-e _tl1104311061_)))
                                (let ((_hd1104511067_ (##car _e1104411064_))
                                      (_tl1104611069_ (##cdr _e1104411064_)))
                                  (let* ((_id11072_ _hd1104511067_)
                                         (_body11074_ _tl1104611069_))
                                    (if (if (gx#identifier? _id11072_)
                                            (gx#stx-list? _body11074_)
                                            '#f)
                                        (let* ((_ctx11076_
                                                (_make-context11037_
                                                 _id11072_))
                                               (_body11078_
                                                (gx#core-expand-module-begin
                                                 _body11074_
                                                 _ctx11076_))
                                               (_body11080_
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body11078_)
                                                 (gx#stx-source _stx11035_))))
                                          (begin
                                            (##structure-set!
                                             _ctx11076_
                                             (make-promise
                                              (lambda ()
                                                (gx#eval-syntax* _body11080_)))
                                             '10
                                             gx#module-context::t
                                             '#f)
                                            (##structure-set!
                                             _ctx11076_
                                             _body11080_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            (gx#core-bind-syntax!__0
                                             _id11072_
                                             _ctx11076_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-list
                                              '%#module
                                              (gx#core-quote-syntax__0
                                               _id11072_)
                                              _body11080_)
                                             (gx#stx-source _stx11035_))))
                                        (_E1104011052_)))))
                              (_E1104011052_))))
                      (_E1104011052_)))))
          (_E1103911084_)))))
  (define gx#core-expand-module-begin
    (lambda (_body11001_ _ctx11002_)
      (call-with-parameters
       (lambda ()
         (begin
           (gx#core-bind-feature!__1 'gerbil-module '#t)
           (let* ((_stx11005_
                   (gx#core-expand-head (cons '%%begin-module _body11001_)))
                  (_e1100611013_ _stx11005_)
                  (_E1100811017_
                   (lambda ()
                     (gx#raise-syntax-error
                      '#f
                      '"Illegal module body expansion"
                      _stx11005_)))
                  (_E1100711031_
                   (lambda ()
                     (if (gx#stx-pair? _e1100611013_)
                         (let ((_e1100911021_ (gx#syntax-e _e1100611013_)))
                           (let ((_hd1101011024_ (##car _e1100911021_))
                                 (_tl1101111026_ (##cdr _e1100911021_)))
                             (if (if (gx#identifier? _hd1101011024_)
                                     (gx#core-identifier=?
                                      _hd1101011024_
                                      '%#begin-module)
                                     '#f)
                                 (let ((_body11029_ _tl1101111026_))
                                   (if '#t
                                       (if (gx#sealed-syntax? _stx11005_)
                                           _body11029_
                                           (gx#core-expand-module-body
                                            _body11029_))
                                       (_E1100811017_)))
                                 (_E1100811017_))))
                         (_E1100811017_)))))
             (_E1100711031_))))
       gx#current-expander-context
       _ctx11002_
       gx#current-expander-phi
       '0)))
  (define gx#core-expand-module-body
    (lambda (_body10797_)
      (letrec ((_expand-special10799_
                (lambda (_hd10928_ _K10929_ _rest10930_ _r10931_)
                  (let* ((_e1093210949_ _hd10928_)
                         (_E1094410953_
                          (lambda ()
                            (_K10929_
                             _rest10930_
                             (cons (gx#core-expand-top _hd10928_) _r10931_))))
                         (_E1093410965_
                          (lambda ()
                            (if (gx#stx-pair? _e1093210949_)
                                (let ((_e1094510957_
                                       (gx#syntax-e _e1093210949_)))
                                  (let ((_hd1094610960_ (##car _e1094510957_))
                                        (_tl1094710962_ (##cdr _e1094510957_)))
                                    (if (if (gx#identifier? _hd1094610960_)
                                            (gx#core-identifier=?
                                             _hd1094610960_
                                             '%#export)
                                            '#f)
                                        (if '#t
                                            (_K10929_
                                             _rest10930_
                                             (cons _hd10928_ _r10931_))
                                            (_E1094410953_))
                                        (_E1094410953_))))
                                (_E1094410953_))))
                         (_E1093310997_
                          (lambda ()
                            (if (gx#stx-pair? _e1093210949_)
                                (let ((_e1093510969_
                                       (gx#syntax-e _e1093210949_)))
                                  (let ((_hd1093610972_ (##car _e1093510969_))
                                        (_tl1093710974_ (##cdr _e1093510969_)))
                                    (if (if (gx#identifier? _hd1093610972_)
                                            (gx#core-identifier=?
                                             _hd1093610972_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1093710974_)
                                            (let ((_e1093810977_
                                                   (gx#syntax-e
                                                    _tl1093710974_)))
                                              (let ((_hd1093910980_
                                                     (##car _e1093810977_))
                                                    (_tl1094010982_
                                                     (##cdr _e1093810977_)))
                                                (let ((_hd-bind10985_
                                                       _hd1093910980_))
                                                  (if (gx#stx-pair?
                                                       _tl1094010982_)
                                                      (let ((_e1094110987_
                                                             (gx#syntax-e
                                                              _tl1094010982_)))
                                                        (let ((_hd1094210990_
                                                               (##car _e1094110987_))
                                                              (_tl1094310992_
                                                               (##cdr _e1094110987_)))
                                                          (let ((_expr10995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1094210990_))
                    (if (gx#stx-null? _tl1094310992_)
                        (if (gx#core-bind-values? _hd-bind10985_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10985_)
                              (_K10929_ _rest10930_ (cons _hd10928_ _r10931_)))
                            (_E1093410965_))
                        (_E1093410965_)))))
              (_E1093410965_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1093410965_))
                                        (_E1093410965_))))
                                (_E1093410965_)))))
                    (_E1093310997_))))
               (_expand-body10800_
                (lambda (_rbody10802_)
                  (let _lp10804_ ((_rest10806_ _rbody10802_) (_body10807_ '()))
                    (let* ((_rest1080810816_ _rest10806_)
                           (_E1081110820_
                            (lambda ()
                              (error '"No clause matching" _rest1080810816_)))
                           (_else1081010824_ (lambda () _body10807_))
                           (_K1081210916_
                            (lambda (_rest10827_ _hd10828_)
                              (let* ((_e1082910850_ _hd10828_)
                                     (_E1084510854_
                                      (lambda ()
                                        (_lp10804_
                                         _rest10827_
                                         (cons (gx#core-expand-expression
                                                _hd10828_)
                                               _body10807_))))
                                     (_E1084110868_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1082910850_)
                                            (let ((_e1084610858_
                                                   (gx#syntax-e
                                                    _e1082910850_)))
                                              (let ((_hd1084710861_
                                                     (##car _e1084610858_))
                                                    (_tl1084810863_
                                                     (##cdr _e1084610858_)))
                                                (let ((_form10866_
                                                       _hd1084710861_))
                                                  (if (gx#core-bound-identifier?__opt-lambda4693
                                                       _form10866_
                                                       gx#special-form-binding?)
                                                      (_lp10804_
                                                       _rest10827_
                                                       (cons _hd10828_
                                                             _body10807_))
                                                      (_E1084510854_)))))
                                            (_E1084510854_))))
                                     (_E1083110880_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1082910850_)
                                            (let ((_e1084210872_
                                                   (gx#syntax-e
                                                    _e1082910850_)))
                                              (let ((_hd1084310875_
                                                     (##car _e1084210872_))
                                                    (_tl1084410877_
                                                     (##cdr _e1084210872_)))
                                                (if (if (gx#identifier?
                                                         _hd1084310875_)
                                                        (gx#core-identifier=?
                                                         _hd1084310875_
                                                         '%#export)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10804_
                                                         _rest10827_
                                                         (cons (gx#core-expand-export%__0
                                                                _hd10828_)
                                                               _body10807_))
                                                        (_E1084110868_))
                                                    (_E1084110868_))))
                                            (_E1084110868_))))
                                     (_E1083010912_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1082910850_)
                                            (let ((_e1083210884_
                                                   (gx#syntax-e
                                                    _e1082910850_)))
                                              (let ((_hd1083310887_
                                                     (##car _e1083210884_))
                                                    (_tl1083410889_
                                                     (##cdr _e1083210884_)))
                                                (if (if (gx#identifier?
                                                         _hd1083310887_)
                                                        (gx#core-identifier=?
                                                         _hd1083310887_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1083410889_)
                                                        (let ((_e1083510892_
                                                               (gx#syntax-e
                                                                _tl1083410889_)))
                                                          (let ((_hd1083610895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1083510892_))
                        (_tl1083710897_ (##cdr _e1083510892_)))
                    (let ((_hd-bind10900_ _hd1083610895_))
                      (if (gx#stx-pair? _tl1083710897_)
                          (let ((_e1083810902_ (gx#syntax-e _tl1083710897_)))
                            (let ((_hd1083910905_ (##car _e1083810902_))
                                  (_tl1084010907_ (##cdr _e1083810902_)))
                              (let ((_expr10910_ _hd1083910905_))
                                (if (gx#stx-null? _tl1084010907_)
                                    (if '#t
                                        (_lp10804_
                                         _rest10827_
                                         (cons (gx#core-quote-syntax__1
                                                (gx#core-list
                                                 '%#define-values
                                                 (gx#core-quote-bind-values
                                                  _hd-bind10900_)
                                                 (gx#core-expand-expression
                                                  _expr10910_))
                                                (gx#stx-source _hd10828_))
                                               _body10807_))
                                        (_E1083110880_))
                                    (_E1083110880_)))))
                          (_E1083110880_)))))
                (_E1083110880_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1083110880_))))
                                            (_E1083110880_)))))
                                (_E1083010912_)))))
                      (if (##pair? _rest1080810816_)
                          (let ((_hd1081310919_ (##car _rest1080810816_))
                                (_tl1081410921_ (##cdr _rest1080810816_)))
                            (let* ((_hd10924_ _hd1081310919_)
                                   (_rest10926_ _tl1081410921_))
                              (_K1081210916_ _rest10926_ _hd10924_)))
                          (_else1081010824_)))))))
        (_expand-body10800_
         (gx#core-expand-block__opt-lambda5747
          (cons '%#begin-module _body10797_)
          _expand-special10799_
          '#f
          values)))))
  (define gx#core-expand-import/export
    (lambda (_stx10640_
             _expanded?10641_
             _method10642_
             _current-phi10643_
             _expand110644_)
      (letrec ((_K10646_
                (lambda (_rest10764_ _r10765_)
                  (let* ((_e1076610773_ _rest10764_)
                         (_E1076810777_ (lambda () _r10765_))
                         (_E1076710793_
                          (lambda ()
                            (if (gx#stx-pair? _e1076610773_)
                                (let ((_e1076910781_
                                       (gx#syntax-e _e1076610773_)))
                                  (let ((_hd1077010784_ (##car _e1076910781_))
                                        (_tl1077110786_ (##cdr _e1076910781_)))
                                    (let* ((_hd10789_ _hd1077010784_)
                                           (_rest10791_ _tl1077110786_))
                                      (if '#t
                                          (_step10647_
                                           _hd10789_
                                           _rest10791_
                                           _r10765_)
                                          (_E1076810777_)))))
                                (_E1076810777_)))))
                    (_E1076710793_))))
               (_step10647_
                (lambda (_hd10678_ _rest10679_ _r10680_)
                  (let* ((_e1068110699_ _hd10678_)
                         (_E1069410703_
                          (lambda ()
                            (if (_expanded?10641_ (gx#stx-e _hd10678_))
                                (_K10646_
                                 _rest10679_
                                 (cons (gx#stx-e _hd10678_) _r10680_))
                                (_expand110644_
                                 _hd10678_
                                 _K10646_
                                 _rest10679_
                                 _r10680_))))
                         (_E1069010719_
                          (lambda ()
                            (if (gx#stx-pair? _e1068110699_)
                                (let ((_e1069510707_
                                       (gx#syntax-e _e1068110699_)))
                                  (let ((_hd1069610710_ (##car _e1069510707_))
                                        (_tl1069710712_ (##cdr _e1069510707_)))
                                    (let* ((_macro10715_ _hd1069610710_)
                                           (_body10717_ _tl1069710712_))
                                      (if (gx#core-bound-identifier?__opt-lambda4693
                                           _macro10715_
                                           gx#syntax-binding?)
                                          (_K10646_
                                           (cons (gx#core-apply-expander__opt-lambda5465
                                                  (gx#syntax-local-e__0
                                                   _macro10715_)
                                                  _hd10678_
                                                  _method10642_)
                                                 _rest10679_)
                                           _r10680_)
                                          (_E1069410703_)))))
                                (_E1069410703_))))
                         (_E1068310733_
                          (lambda ()
                            (if (gx#stx-pair? _e1068110699_)
                                (let ((_e1069110723_
                                       (gx#syntax-e _e1068110699_)))
                                  (let ((_hd1069210726_ (##car _e1069110723_))
                                        (_tl1069310728_ (##cdr _e1069110723_)))
                                    (if (eq? (gx#stx-e _hd1069210726_) 'begin:)
                                        (let ((_body10731_ _tl1069310728_))
                                          (if '#t
                                              (_K10646_
                                               (gx#stx-foldr
                                                cons
                                                _rest10679_
                                                _body10731_)
                                               _r10680_)
                                              (_E1069010719_)))
                                        (_E1069010719_))))
                                (_E1069010719_))))
                         (_E1068210760_
                          (lambda ()
                            (if (gx#stx-pair? _e1068110699_)
                                (let ((_e1068410737_
                                       (gx#syntax-e _e1068110699_)))
                                  (let ((_hd1068510740_ (##car _e1068410737_))
                                        (_tl1068610742_ (##cdr _e1068410737_)))
                                    (if (eq? (gx#stx-e _hd1068510740_) 'phi:)
                                        (if (gx#stx-pair? _tl1068610742_)
                                            (let ((_e1068710745_
                                                   (gx#syntax-e
                                                    _tl1068610742_)))
                                              (let ((_hd1068810748_
                                                     (##car _e1068710745_))
                                                    (_tl1068910750_
                                                     (##cdr _e1068710745_)))
                                                (let* ((_dphi10753_
                                                        _hd1068810748_)
                                                       (_body10755_
                                                        _tl1068910750_))
                                                  (if (gx#stx-fixnum?
                                                       _dphi10753_)
                                                      (let ((_rbody10758_
                                                             (call-with-parameters
                                                              (lambda ()
                                                                (_K10646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10755_
                         '()))
                      _current-phi10643_
                      (fx+ (gx#stx-e _dphi10753_) (_current-phi10643_)))))
                (_K10646_ _rest10679_ (foldr1 cons _r10680_ _rbody10758_)))
              (_E1068310733_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1068310733_))
                                        (_E1068310733_))))
                                (_E1068310733_)))))
                    (_E1068210760_)))))
        (let* ((_e1064810655_ _stx10640_)
               (_E1065010659_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1064810655_)))
               (_E1064910674_
                (lambda ()
                  (if (gx#stx-pair? _e1064810655_)
                      (let ((_e1065110663_ (gx#syntax-e _e1064810655_)))
                        (let ((_hd1065210666_ (##car _e1065110663_))
                              (_tl1065310668_ (##cdr _e1065110663_)))
                          (let ((_body10671_ _tl1065310668_))
                            (if '#t
                                (if (_current-phi10643_)
                                    (_K10646_ _body10671_ '())
                                    (call-with-parameters
                                     (lambda () (_K10646_ _body10671_ '()))
                                     _current-phi10643_
                                     (gx#current-expander-phi)))
                                (_E1065010659_)))))
                      (_E1065010659_)))))
          (_E1064910674_)))))
  (begin
    (define gx#core-expand-import%__opt-lambda10177
      (lambda (_stx10179_ _internal-expand?10180_)
        (letrec ((_expand110182_
                  (lambda (_hd10625_ _K10626_ _rest10627_ _r10628_)
                    (if (gx#core-bound-module? _hd10625_)
                        (_import110183_
                         (gx#syntax-local-e__0 _hd10625_)
                         _K10626_
                         _rest10627_
                         _r10628_)
                        (if (gx#core-library-module-path? _hd10625_)
                            (_import110183_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path _hd10625_))
                             _K10626_
                             _rest10627_
                             _r10628_)
                            (if (gx#stx-string? _hd10625_)
                                (_import110183_
                                 (gx#import-module__0
                                  (gx#core-resolve-module-path__opt-lambda11465
                                   _hd10625_
                                   (gx#stx-source _stx10179_)))
                                 _K10626_
                                 _rest10627_
                                 _r10628_)
                                (if (##structure-instance-of?
                                     (gx#stx-e _hd10625_)
                                     'gx#module-context::t)
                                    (_K10626_
                                     _rest10627_
                                     (cons (gx#stx-e _hd10625_) _r10628_))
                                    (if (_import-spec?10184_ _hd10625_)
                                        (_import-spec10189_
                                         _hd10625_
                                         _K10626_
                                         _rest10627_
                                         _r10628_)
                                        (if (_import-submodule?10185_
                                             _hd10625_)
                                            (_import-submodule10187_
                                             _hd10625_
                                             _K10626_
                                             _rest10627_
                                             _r10628_)
                                            (if (_import-runtime?10186_
                                                 _hd10625_)
                                                (_import-runtime10188_
                                                 _hd10625_
                                                 _K10626_
                                                 _rest10627_
                                                 _r10628_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; illegal import"
                                                 _stx10179_
                                                 _hd10625_))))))))))
                 (_import110183_
                  (lambda (_ctx10614_ _K10615_ _rest10616_ _r10617_)
                    (let ((_dphi10619_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_K10615_
                       _rest10616_
                       (cons (##structure
                              gx#import-set::t
                              _ctx10614_
                              _dphi10619_
                              (map (lambda (_g1062010622_)
                                     (gx#core-module-export->import__opt-lambda11105
                                      _g1062010622_
                                      '#f
                                      _dphi10619_))
                                   (##structure-ref
                                    _ctx10614_
                                    '9
                                    gx#module-context::t
                                    '#f)))
                             _r10617_)))))
                 (_import-spec?10184_
                  (lambda (_hd10571_)
                    (let* ((_e1057210582_ _hd10571_)
                           (_E1057410586_ (lambda () '#f))
                           (_E1057310610_
                            (lambda ()
                              (if (gx#stx-pair? _e1057210582_)
                                  (let ((_e1057510590_
                                         (gx#syntax-e _e1057210582_)))
                                    (let ((_hd1057610593_
                                           (##car _e1057510590_))
                                          (_tl1057710595_
                                           (##cdr _e1057510590_)))
                                      (if (eq? (gx#stx-e _hd1057610593_)
                                               'spec:)
                                          (if (gx#stx-pair? _tl1057710595_)
                                              (let ((_e1057810598_
                                                     (gx#syntax-e
                                                      _tl1057710595_)))
                                                (let ((_hd1057910601_
                                                       (##car _e1057810598_))
                                                      (_tl1058010603_
                                                       (##cdr _e1057810598_)))
                                                  (let* ((_spath10606_
                                                          _hd1057910601_)
                                                         (_specs10608_
                                                          _tl1058010603_))
                                                    (if '#t
                                                        '#t
                                                        (_E1057410586_)))))
                                              (_E1057410586_))
                                          (_E1057410586_))))
                                  (_E1057410586_)))))
                      (_E1057310610_))))
                 (_import-submodule?10185_
                  (lambda (_hd10528_)
                    (let* ((_e1052910539_ _hd10528_)
                           (_E1053110543_ (lambda () '#f))
                           (_E1053010567_
                            (lambda ()
                              (if (gx#stx-pair? _e1052910539_)
                                  (let ((_e1053210547_
                                         (gx#syntax-e _e1052910539_)))
                                    (let ((_hd1053310550_
                                           (##car _e1053210547_))
                                          (_tl1053410552_
                                           (##cdr _e1053210547_)))
                                      (if (eq? (gx#stx-e _hd1053310550_) 'in:)
                                          (if (gx#stx-pair? _tl1053410552_)
                                              (let ((_e1053510555_
                                                     (gx#syntax-e
                                                      _tl1053410552_)))
                                                (let ((_hd1053610558_
                                                       (##car _e1053510555_))
                                                      (_tl1053710560_
                                                       (##cdr _e1053510555_)))
                                                  (let* ((_top10563_
                                                          _hd1053610558_)
                                                         (_sub10565_
                                                          _tl1053710560_))
                                                    (if '#t
                                                        '#t
                                                        (_E1053110543_)))))
                                              (_E1053110543_))
                                          (_E1053110543_))))
                                  (_E1053110543_)))))
                      (_E1053010567_))))
                 (_import-runtime?10186_
                  (lambda (_hd10485_)
                    (let* ((_e1048610496_ _hd10485_)
                           (_E1048810500_ (lambda () '#f))
                           (_E1048710524_
                            (lambda ()
                              (if (gx#stx-pair? _e1048610496_)
                                  (let ((_e1048910504_
                                         (gx#syntax-e _e1048610496_)))
                                    (let ((_hd1049010507_
                                           (##car _e1048910504_))
                                          (_tl1049110509_
                                           (##cdr _e1048910504_)))
                                      (if (eq? (gx#stx-e _hd1049010507_)
                                               'runtime:)
                                          (if (gx#stx-pair? _tl1049110509_)
                                              (let ((_e1049210512_
                                                     (gx#syntax-e
                                                      _tl1049110509_)))
                                                (let ((_hd1049310515_
                                                       (##car _e1049210512_))
                                                      (_tl1049410517_
                                                       (##cdr _e1049210512_)))
                                                  (let* ((_top10520_
                                                          _hd1049310515_)
                                                         (_spath10522_
                                                          _tl1049410517_))
                                                    (if '#t
                                                        '#t
                                                        (_E1048810500_)))))
                                              (_E1048810500_))
                                          (_E1048810500_))))
                                  (_E1048810500_)))))
                      (_E1048710524_))))
                 (_import-submodule10187_
                  (lambda (_hd10452_ _K10453_ _rest10454_ _r10455_)
                    (let* ((_e1045610463_ _hd10452_)
                           (_E1045810467_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1045610463_)))
                           (_E1045710481_
                            (lambda ()
                              (if (gx#stx-pair? _e1045610463_)
                                  (let ((_e1045910471_
                                         (gx#syntax-e _e1045610463_)))
                                    (let ((_hd1046010474_
                                           (##car _e1045910471_))
                                          (_tl1046110476_
                                           (##cdr _e1045910471_)))
                                      (let ((_spath10479_ _tl1046110476_))
                                        (if '#t
                                            (_import110183_
                                             (_import-spec-source10190_
                                              _spath10479_)
                                             _K10453_
                                             _rest10454_
                                             _r10455_)
                                            (_E1045810467_)))))
                                  (_E1045810467_)))))
                      (_E1045710481_))))
                 (_import-runtime10188_
                  (lambda (_hd10419_ _K10420_ _rest10421_ _r10422_)
                    (let* ((_e1042310430_ _hd10419_)
                           (_E1042510434_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1042310430_)))
                           (_E1042410448_
                            (lambda ()
                              (if (gx#stx-pair? _e1042310430_)
                                  (let ((_e1042610438_
                                         (gx#syntax-e _e1042310430_)))
                                    (let ((_hd1042710441_
                                           (##car _e1042610438_))
                                          (_tl1042810443_
                                           (##cdr _e1042610438_)))
                                      (let ((_spath10446_ _tl1042810443_))
                                        (if '#t
                                            (_K10420_
                                             _rest10421_
                                             (cons (_import-spec-source10190_
                                                    _spath10446_)
                                                   _r10422_))
                                            (_E1042510434_)))))
                                  (_E1042510434_)))))
                      (_E1042410448_))))
                 (_import-spec10189_
                  (lambda (_hd10258_ _K10259_ _rest10260_ _r10261_)
                    (let* ((_e1026210279_ _hd10258_)
                           (_E1027110283_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1026210279_)))
                           (_E1026410393_
                            (lambda ()
                              (if (gx#stx-pair? _e1026210279_)
                                  (let ((_e1027210287_
                                         (gx#syntax-e _e1026210279_)))
                                    (let ((_hd1027310290_
                                           (##car _e1027210287_))
                                          (_tl1027410292_
                                           (##cdr _e1027210287_)))
                                      (if (gx#stx-pair? _tl1027410292_)
                                          (let ((_e1027510295_
                                                 (gx#syntax-e _tl1027410292_)))
                                            (let ((_hd1027610298_
                                                   (##car _e1027510295_))
                                                  (_tl1027710300_
                                                   (##cdr _e1027510295_)))
                                              (let* ((_path10303_
                                                      _hd1027610298_)
                                                     (_specs10305_
                                                      _tl1027710300_))
                                                (if '#t
                                                    (let ((_src-ctx10307_
                                                           (_import-spec-source10190_
                                                            _path10303_))
                                                          (_exports10308_
                                                           (make-table))
                                                          (_specs10309_
                                                           (gx#syntax->list
                                                            _specs10305_)))
                                                      (begin
                                                        (for-each
                                                         (lambda (_out10311_)
                                                           (table-set!
                                                            _exports10308_
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out10311_
                           '3
                           gx#module-export::t
                           '#f)
                          (##direct-structure-ref
                           _out10311_
                           '4
                           gx#module-export::t
                           '#f))
                    _out10311_))
                 (##structure-ref _src-ctx10307_ '9 gx#module-context::t '#f))
                (_K10259_
                 _rest10260_
                 (foldl1 (lambda (_spec10313_ _r10314_)
                           (let* ((_e1031510331_ _spec10313_)
                                  (_E1031710335_
                                   (lambda ()
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _e1031510331_)))
                                  (_E1031610389_
                                   (lambda ()
                                     (if (gx#stx-pair? _e1031510331_)
                                         (let ((_e1031810339_
                                                (gx#syntax-e _e1031510331_)))
                                           (let ((_hd1031910342_
                                                  (##car _e1031810339_))
                                                 (_tl1032010344_
                                                  (##cdr _e1031810339_)))
                                             (let ((_phi10347_ _hd1031910342_))
                                               (if (gx#stx-pair?
                                                    _tl1032010344_)
                                                   (let ((_e1032110349_
                                                          (gx#syntax-e
                                                           _tl1032010344_)))
                                                     (let ((_hd1032210352_
                                                            (##car _e1032110349_))
                                                           (_tl1032310354_
                                                            (##cdr _e1032110349_)))
                                                       (let ((_name10357_
                                                              _hd1032210352_))
                                                         (if (gx#stx-pair?
                                                              _tl1032310354_)
                                                             (let ((_e1032410359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1032310354_)))
                       (let ((_hd1032510362_ (##car _e1032410359_))
                             (_tl1032610364_ (##cdr _e1032410359_)))
                         (let ((_src-phi10367_ _hd1032510362_))
                           (if (gx#stx-pair? _tl1032610364_)
                               (let ((_e1032710369_
                                      (gx#syntax-e _tl1032610364_)))
                                 (let ((_hd1032810372_ (##car _e1032710369_))
                                       (_tl1032910374_ (##cdr _e1032710369_)))
                                   (let ((_src-name10377_ _hd1032810372_))
                                     (if (gx#stx-null? _tl1032910374_)
                                         (if (if (gx#stx-fixnum?
                                                  _src-phi10367_)
                                                 (if (gx#identifier?
                                                      _src-name10377_)
                                                     (if (gx#stx-fixnum?
                                                          _phi10347_)
                                                         (gx#identifier?
                                                          _name10357_)
                                                         '#f)
                                                     '#f)
                                                 '#f)
                                             (let ((_src-phi10379_
                                                    (gx#stx-e _src-phi10367_))
                                                   (_src-name10380_
                                                    (gx#core-identifier-key
                                                     _src-name10377_))
                                                   (_phi10381_
                                                    (gx#stx-e _phi10347_))
                                                   (_name10382_
                                                    (gx#core-identifier-key
                                                     _name10357_)))
                                               (let ((_$e10384_
                                                      (table-ref
                                                       _exports10308_
                                                       (cons _src-phi10379_
                                                             _src-name10380_)
                                                       '#f)))
                                                 (if _$e10384_
                                                     ((lambda (_out10387_)
                                                        (cons (gx#core-module-export->import__opt-lambda11105
                                                               _out10387_
                                                               _name10382_
                                                               (fx- _phi10381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _src-phi10379_))
                      _r10314_))
              _$e10384_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; no matching export"
                                                      _stx10179_
                                                      _hd10258_))))
                                             (_E1031710335_))
                                         (_E1031710335_)))))
                               (_E1031710335_)))))
                     (_E1031710335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1031710335_)))))
                                         (_E1031710335_)))))
                             (_E1031610389_)))
                         _r10261_
                         _specs10309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1027110283_)))))
                                          (_E1027110283_))))
                                  (_E1027110283_))))
                           (_E1026310415_
                            (lambda ()
                              (if (gx#stx-pair? _e1026210279_)
                                  (let ((_e1026510397_
                                         (gx#syntax-e _e1026210279_)))
                                    (let ((_hd1026610400_
                                           (##car _e1026510397_))
                                          (_tl1026710402_
                                           (##cdr _e1026510397_)))
                                      (if (gx#stx-pair? _tl1026710402_)
                                          (let ((_e1026810405_
                                                 (gx#syntax-e _tl1026710402_)))
                                            (let ((_hd1026910408_
                                                   (##car _e1026810405_))
                                                  (_tl1027010410_
                                                   (##cdr _e1026810405_)))
                                              (let ((_path10413_
                                                     _hd1026910408_))
                                                (if (gx#stx-null?
                                                     _tl1027010410_)
                                                    (if '#t
                                                        (_K10259_
                                                         _rest10260_
                                                         (cons (_import-spec-source10190_
                                                                _path10413_)
                                                               _r10261_))
                                                        (_E1026410393_))
                                                    (_E1026410393_)))))
                                          (_E1026410393_))))
                                  (_E1026410393_)))))
                      (_E1026310415_))))
                 (_import-spec-source10190_
                  (lambda (_spath10256_)
                    (gx#core-import-nested-module _spath10256_ _stx10179_)))
                 (_import!10191_
                  (lambda (_rbody10204_)
                    (letrec* ((_current-ctx10206_
                               (gx#current-expander-context))
                              (_deps10207_ (make-hash-table-eq))
                              (_bind!10208_
                               (lambda (_hd10254_)
                                 (begin
                                   (gx#core-bind-import!__1
                                    _hd10254_
                                    _current-ctx10206_)
                                   (if (if (fxpositive?
                                            (##direct-structure-ref
                                             _hd10254_
                                             '3
                                             gx#module-import::t
                                             '#f))
                                           (fxzero? (##direct-structure-ref
                                                     (##direct-structure-ref
                                                      _hd10254_
                                                      '1
                                                      gx#module-import::t
                                                      '#f)
                                                     '3
                                                     gx#module-export::t
                                                     '#f))
                                           '#f)
                                       (table-set!
                                        _deps10207_
                                        (##direct-structure-ref
                                         (##direct-structure-ref
                                          _hd10254_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         '1
                                         gx#module-export::t
                                         '#f)
                                        '#t)
                                       '#!void))))
                              (_fold-e10209_
                               (lambda (_in10251_ _r10252_)
                                 (if (##structure-direct-instance-of?
                                      _in10251_
                                      'gx#module-import::t)
                                     (cons _in10251_ _r10252_)
                                     (if (##structure-direct-instance-of?
                                          _in10251_
                                          'gx#import-set::t)
                                         (foldl1 cons
                                                 _r10252_
                                                 (##direct-structure-ref
                                                  _in10251_
                                                  '3
                                                  gx#import-set::t
                                                  '#f))
                                         _r10252_)))))
                      (let _lp10211_ ((_rest10213_ _rbody10204_)
                                      (_body10214_ '()))
                        (let* ((_rest1021510223_ _rest10213_)
                               (_E1021810227_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1021510223_)))
                               (_else1021710233_
                                (lambda ()
                                  (begin
                                    (if (##structure-instance-of?
                                         _current-ctx10206_
                                         'gx#module-context::t)
                                        (##structure-set!
                                         _current-ctx10206_
                                         (foldl1 _fold-e10209_
                                                 (##structure-ref
                                                  _current-ctx10206_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)
                                                 _body10214_)
                                         '8
                                         gx#module-context::t
                                         '#f)
                                        '#!void)
                                    (table-for-each
                                     (lambda (_ctx10231_ _g12156_)
                                       (gx#eval-module _ctx10231_))
                                     _deps10207_)
                                    _body10214_)))
                               (_K1021910239_
                                (lambda (_rest10236_ _hd10237_)
                                  (begin
                                    (if (##structure-direct-instance-of?
                                         _hd10237_
                                         'gx#module-import::t)
                                        (_bind!10208_ _hd10237_)
                                        (if (##structure-direct-instance-of?
                                             _hd10237_
                                             'gx#import-set::t)
                                            (for-each
                                             _bind!10208_
                                             (##direct-structure-ref
                                              _hd10237_
                                              '3
                                              gx#import-set::t
                                              '#f))
                                            (if (##structure-instance-of?
                                                 _hd10237_
                                                 'gx#module-context::t)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _stx10179_
                                                 _hd10237_))))
                                    (_lp10211_
                                     _rest10236_
                                     (cons _hd10237_ _body10214_))))))
                          (if (##pair? _rest1021510223_)
                              (let ((_hd1022010242_ (##car _rest1021510223_))
                                    (_tl1022110244_ (##cdr _rest1021510223_)))
                                (let* ((_hd10247_ _hd1022010242_)
                                       (_rest10249_ _tl1022110244_))
                                  (_K1021910239_ _rest10249_ _hd10247_)))
                              (_else1021710233_)))))))
                 (_expanded-import?10192_
                  (lambda (_e10196_)
                    (let ((_$e10198_
                           (##structure-direct-instance-of?
                            _e10196_
                            'gx#import-set::t)))
                      (if _$e10198_
                          _$e10198_
                          (let ((_$e10201_
                                 (##structure-direct-instance-of?
                                  _e10196_
                                  'gx#module-import::t)))
                            (if _$e10201_
                                _$e10201_
                                (##structure-instance-of?
                                 _e10196_
                                 'gx#module-context::t))))))))
          (let ((_rbody10194_
                 (gx#core-expand-import/export
                  _stx10179_
                  _expanded-import?10192_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _expand110182_)))
            (if _internal-expand?10180_
                (reverse _rbody10194_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_import!10191_ _rbody10194_))
                 (gx#stx-source _stx10179_)))))))
    (begin
      (define gx#core-expand-import%__0
        (lambda (_stx10633_)
          (let ((_internal-expand?10635_ '#f))
            (gx#core-expand-import%__opt-lambda10177
             _stx10633_
             _internal-expand?10635_))))
      (define gx#core-expand-import%
        (lambda _g12158_
          (let ((_g12157_ (length _g12158_)))
            (cond ((fx= _g12157_ 1) (apply gx#core-expand-import%__0 _g12158_))
                  ((fx= _g12157_ 2)
                   (apply gx#core-expand-import%__opt-lambda10177 _g12158_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-import%
                    _g12158_))))))))
  (define gx#core-import-nested-module
    (lambda (_spath10106_ _where10107_)
      (let* ((_e1010810115_ _spath10106_)
             (_E1011010119_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1010810115_)))
             (_E1010910174_
              (lambda ()
                (if (gx#stx-pair? _e1010810115_)
                    (let ((_e1011110123_ (gx#syntax-e _e1010810115_)))
                      (let ((_hd1011210126_ (##car _e1011110123_))
                            (_tl1011310128_ (##cdr _e1011110123_)))
                        (let* ((_origin10131_ _hd1011210126_)
                               (_sub10133_ _tl1011310128_))
                          (if '#t
                              (let ((_origin-ctx10135_
                                     (if (gx#stx-false? _origin10131_)
                                         (gx#current-expander-context)
                                         (gx#import-module__0 _origin10131_))))
                                (let _lp10137_ ((_rest10139_ _sub10133_)
                                                (_ctx10140_ _origin-ctx10135_))
                                  (let* ((_e1014110148_ _rest10139_)
                                         (_E1014310152_ (lambda () _ctx10140_))
                                         (_E1014210170_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1014110148_)
                                                (let ((_e1014410156_
                                                       (gx#syntax-e
                                                        _e1014110148_)))
                                                  (let ((_hd1014510159_
                                                         (##car _e1014410156_))
                                                        (_tl1014610161_
                                                         (##cdr _e1014410156_)))
                                                    (let* ((_id10164_
                                                            _hd1014510159_)
                                                           (_rest10166_
                                                            _tl1014610161_))
                                                      (if '#t
                                                          (let ((_bind10168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#resolve-identifier__opt-lambda5250
                          _id10164_
                          '0
                          _ctx10140_)))
                    (begin
                      (if (if (##structure-direct-instance-of?
                               _bind10168_
                               'gx#syntax-binding::t)
                              (##structure-instance-of?
                               (##direct-structure-ref
                                _bind10168_
                                '4
                                gx#syntax-binding::t
                                '#f)
                               'gx#module-context::t)
                              '#f)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; not bound as module"
                           _where10107_
                           _spath10106_
                           _id10164_))
                      (_lp10137_
                       _rest10166_
                       (##direct-structure-ref
                        _bind10168_
                        '4
                        gx#syntax-binding::t
                        '#f))))
                  (_E1014310152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1014310152_)))))
                                    (_E1014210170_))))
                              (_E1011010119_)))))
                    (_E1011010119_)))))
        (_E1010910174_))))
  (define gx#core-expand-import-source
    (lambda (_hd10104_)
      (gx#core-expand-import%__opt-lambda10177
       (cons 'import-internal% (cons _hd10104_ '()))
       '#t)))
  (begin
    (define gx#core-expand-export%__opt-lambda9686
      (lambda (_stx9688_ _internal-expand?9689_)
        (letrec* ((_make-export__opt-lambda10050__1212212123_
                   (lambda (_bind10052_ _phi10053_ _ctx10054_ _name10055_)
                     (let* ((_key10057_
                             (##structure-ref
                              _bind10052_
                              '2
                              gx#binding::t
                              '#f))
                            (_export-key10059_
                             (if _name10055_
                                 (gx#core-identifier-key _name10055_)
                                 _key10057_)))
                       (##structure
                        gx#module-export::t
                        _ctx10054_
                        _key10057_
                        _phi10053_
                        _export-key10059_
                        (let ((_$e10062_
                               (##structure-instance-of?
                                _bind10052_
                                'gx#extern-binding::t)))
                          (if _$e10062_
                              _$e10062_
                              (##structure-direct-instance-of?
                               _bind10052_
                               'gx#import-binding::t)))))))
                  (_make-export__0__1212412127_
                   (lambda (_bind10068_)
                     (let* ((_phi10070_ (gx#current-export-expander-phi))
                            (_ctx10072_ (gx#current-expander-context))
                            (_name10074_ '#f))
                       (_make-export__opt-lambda10050__1212212123_
                        _bind10068_
                        _phi10070_
                        _ctx10072_
                        _name10074_))))
                  (_make-export__1__1212512128_
                   (lambda (_bind10076_ _phi10077_)
                     (let* ((_ctx10079_ (gx#current-expander-context))
                            (_name10081_ '#f))
                       (_make-export__opt-lambda10050__1212212123_
                        _bind10076_
                        _phi10077_
                        _ctx10079_
                        _name10081_))))
                  (_make-export__2__1212612129_
                   (lambda (_bind10083_ _phi10084_ _ctx10085_)
                     (let ((_name10087_ '#f))
                       (_make-export__opt-lambda10050__1212212123_
                        _bind10083_
                        _phi10084_
                        _ctx10085_
                        _name10087_))))
                  (_make-export9691_
                   (lambda _g12160_
                     (let ((_g12159_ (length _g12160_)))
                       (cond ((fx= _g12159_ 1)
                              (apply _make-export__0__1212412127_ _g12160_))
                             ((fx= _g12159_ 2)
                              (apply _make-export__1__1212512128_ _g12160_))
                             ((fx= _g12159_ 3)
                              (apply _make-export__2__1212612129_ _g12160_))
                             ((fx= _g12159_ 4)
                              (apply _make-export__opt-lambda10050__1212212123_
                                     _g12160_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g12160_))))))
                  (_expand19692_
                   (lambda (_hd9765_ _K9766_ _rest9767_ _r9768_)
                     (let* ((_e97699801_ _hd9765_)
                            (_E97969805_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _stx9688_
                                _hd9765_)))
                            (_E97869884_
                             (lambda ()
                               (if (gx#stx-pair? _e97699801_)
                                   (let ((_e97979809_
                                          (gx#syntax-e _e97699801_)))
                                     (let ((_hd97989812_ (##car _e97979809_))
                                           (_tl97999814_ (##cdr _e97979809_)))
                                       (if (eq? (gx#stx-e _hd97989812_)
                                                'import:)
                                           (let ((_in9817_ _tl97999814_))
                                             (if (gx#stx-list? _in9817_)
                                                 (let _lp9819_ ((_in-rest9821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in9817_)
                        (_r9822_ _r9768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_e98239830_
                                                           _in-rest9821_)
                                                          (_E98259834_
                                                           (lambda ()
                                                             (_K9766_ _rest9767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r9822_)))
                  (_E98249880_
                   (lambda ()
                     (if (gx#stx-pair? _e98239830_)
                         (let ((_e98269838_ (gx#syntax-e _e98239830_)))
                           (let ((_hd98279841_ (##car _e98269838_))
                                 (_tl98289843_ (##cdr _e98269838_)))
                             (let* ((_hd9846_ _hd98279841_)
                                    (_in-rest9848_ _tl98289843_))
                               (if '#t
                                   (let ((_src9878_
                                          (if (gx#core-bound-module? _hd9846_)
                                              (gx#syntax-local-e__0 _hd9846_)
                                              (if (gx#core-library-module-path?
                                                   _hd9846_)
                                                  (gx#import-module__0
                                                   (gx#core-resolve-library-module-path
                                                    _hd9846_))
                                                  (if (gx#stx-string? _hd9846_)
                                                      (gx#import-module__0
                                                       (gx#core-resolve-module-path__opt-lambda11465
                                                        _hd9846_
                                                        (gx#stx-source
                                                         _stx9688_)))
                                                      (let* ((_e98499856_
                                                              _hd9846_)
                                                             (_E98519860_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; illegal re-export"
                         _stx9688_
                         _hd9846_)))
                     (_E98509874_
                      (lambda ()
                        (if (gx#stx-pair? _e98499856_)
                            (let ((_e98529864_ (gx#syntax-e _e98499856_)))
                              (let ((_hd98539867_ (##car _e98529864_))
                                    (_tl98549869_ (##cdr _e98529864_)))
                                (if (eq? (gx#stx-e _hd98539867_) 'in:)
                                    (let ((_spath9872_ _tl98549869_))
                                      (if '#t
                                          (gx#core-import-nested-module
                                           _spath9872_
                                           _stx9688_)
                                          (_E98519860_)))
                                    (_E98519860_))))
                            (_E98519860_)))))
                (_E98509874_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_lp9819_
                                      _in-rest9848_
                                      (_export-imports9693_
                                       _src9878_
                                       _r9822_)))
                                   (_E98259834_)))))
                         (_E98259834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E98249880_)))
                                                 (_E97969805_)))
                                           (_E97969805_))))
                                   (_E97969805_))))
                            (_E97739923_
                             (lambda ()
                               (if (gx#stx-pair? _e97699801_)
                                   (let ((_e97879888_
                                          (gx#syntax-e _e97699801_)))
                                     (let ((_hd97889891_ (##car _e97879888_))
                                           (_tl97899893_ (##cdr _e97879888_)))
                                       (if (eq? (gx#stx-e _hd97889891_)
                                                'rename:)
                                           (if (gx#stx-pair? _tl97899893_)
                                               (let ((_e97909896_
                                                      (gx#syntax-e
                                                       _tl97899893_)))
                                                 (let ((_hd97919899_
                                                        (##car _e97909896_))
                                                       (_tl97929901_
                                                        (##cdr _e97909896_)))
                                                   (let ((_id9904_
                                                          _hd97919899_))
                                                     (if (gx#stx-pair?
                                                          _tl97929901_)
                                                         (let ((_e97939906_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl97929901_)))
                   (let ((_hd97949909_ (##car _e97939906_))
                         (_tl97959911_ (##cdr _e97939906_)))
                     (let ((_name9914_ _hd97949909_))
                       (if (gx#stx-null? _tl97959911_)
                           (if '#t
                               (let* ((_phi9916_
                                       (gx#current-export-expander-phi))
                                      (_$e9918_
                                       (gx#core-resolve-identifier__1
                                        _id9904_
                                        _phi9916_)))
                                 (if _$e9918_
                                     ((lambda (_bind9921_)
                                        (_K9766_ _rest9767_
                                                 (cons (_make-export__opt-lambda10050__1212212123_
                                                        _bind9921_
                                                        _phi9916_
                                                        (gx#current-expander-context)
                                                        _name9914_)
                                                       _r9768_)))
                                      _$e9918_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Reference to unbound identifier"
                                      _stx9688_
                                      _hd9765_
                                      _id9904_)))
                               (_E97869884_))
                           (_E97869884_)))))
                 (_E97869884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E97869884_))
                                           (_E97869884_))))
                                   (_E97869884_))))
                            (_E97729972_
                             (lambda ()
                               (if (gx#stx-pair? _e97699801_)
                                   (let ((_e97749927_
                                          (gx#syntax-e _e97699801_)))
                                     (let ((_hd97759930_ (##car _e97749927_))
                                           (_tl97769932_ (##cdr _e97749927_)))
                                       (if (eq? (gx#stx-e _hd97759930_) 'spec:)
                                           (if (gx#stx-pair? _tl97769932_)
                                               (let ((_e97779935_
                                                      (gx#syntax-e
                                                       _tl97769932_)))
                                                 (let ((_hd97789938_
                                                        (##car _e97779935_))
                                                       (_tl97799940_
                                                        (##cdr _e97779935_)))
                                                   (let ((_phi9943_
                                                          _hd97789938_))
                                                     (if (gx#stx-pair?
                                                          _tl97799940_)
                                                         (let ((_e97809945_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl97799940_)))
                   (let ((_hd97819948_ (##car _e97809945_))
                         (_tl97829950_ (##cdr _e97809945_)))
                     (let ((_id9953_ _hd97819948_))
                       (if (gx#stx-pair? _tl97829950_)
                           (let ((_e97839955_ (gx#syntax-e _tl97829950_)))
                             (let ((_hd97849958_ (##car _e97839955_))
                                   (_tl97859960_ (##cdr _e97839955_)))
                               (let ((_name9963_ _hd97849958_))
                                 (if (gx#stx-null? _tl97859960_)
                                     (if (if (gx#stx-fixnum? _phi9943_)
                                             (if (gx#identifier? _id9953_)
                                                 (gx#identifier? _name9963_)
                                                 '#f)
                                             '#f)
                                         (let* ((_phi9965_
                                                 (gx#stx-e _phi9943_))
                                                (_$e9967_
                                                 (gx#core-resolve-identifier__1
                                                  _id9953_
                                                  _phi9965_)))
                                           (if _$e9967_
                                               ((lambda (_bind9970_)
                                                  (_K9766_ _rest9767_
                                                           (cons (_make-export__opt-lambda10050__1212212123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _bind9970_
                          _phi9965_
                          (gx#current-expander-context)
                          _name9963_)
                         _r9768_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e9967_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _stx9688_
                                                _hd9765_
                                                _id9953_)))
                                         (_E97739923_))
                                     (_E97739923_)))))
                           (_E97739923_)))))
                 (_E97739923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E97739923_))
                                           (_E97739923_))))
                                   (_E97739923_))))
                            (_E97719983_
                             (lambda ()
                               (let ((_id9976_ _e97699801_))
                                 (if (gx#identifier? _id9976_)
                                     (let ((_$e9978_
                                            (gx#core-resolve-identifier__1
                                             _id9976_
                                             (gx#current-export-expander-phi))))
                                       (if _$e9978_
                                           ((lambda (_bind9981_)
                                              (_K9766_ _rest9767_
                                                       (cons (_make-export__0__1212412127_
                                                              _bind9981_)
                                                             _r9768_)))
                                            _$e9978_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _stx9688_
                                            _hd9765_)))
                                     (_E97729972_)))))
                            (_E977010047_
                             (lambda ()
                               (if (eq? (gx#stx-e _e97699801_) '#t)
                                   (if '#t
                                       (let* ((_current-ctx9987_
                                               (gx#current-expander-context))
                                              (_current-phi9989_
                                               (gx#current-export-expander-phi))
                                              (_phi-ctx9991_
                                               (gx#core-context-shift
                                                _current-ctx9987_
                                                _current-phi9989_))
                                              (_phi-bind9993_
                                               (table->list
                                                (##structure-ref
                                                 _phi-ctx9991_
                                                 '2
                                                 gx#expander-context::t
                                                 '#f))))
                                         (let _lp9996_ ((_bind-rest9998_
                                                         _phi-bind9993_)
                                                        (_set9999_ '()))
                                           (let* ((_bind-rest1000010010_
                                                   _bind-rest9998_)
                                                  (_E1000310014_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _bind-rest1000010010_)))
                                                  (_else1000210018_
                                                   (lambda ()
                                                     (_K9766_ _rest9767_
                                                              (cons (##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             gx#export-set::t
                             '#f
                             _current-phi9989_
                             _set9999_)
                            _r9768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_K1000410028_
                                                   (lambda (_bind-rest10021_
                                                            _bind10022_
                                                            _key10023_)
                                                     (if (let ((_$e10025_
                                                                (##structure-direct-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind10022_
                         'gx#import-binding::t)))
                   (if _$e10025_
                       _$e10025_
                       (gx#private-feature-binding? _bind10022_)))
                 (_lp9996_ _bind-rest10021_ _set9999_)
                 (_lp9996_
                  _bind-rest10021_
                  (cons (_make-export__2__1212612129_
                         _bind10022_
                         _current-phi9989_
                         _current-ctx9987_)
                        _set9999_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _bind-rest1000010010_)
                                                 (let ((_hd1000510031_
                                                        (##car _bind-rest1000010010_))
                                                       (_tl1000610033_
                                                        (##cdr _bind-rest1000010010_)))
                                                   (if (##pair? _hd1000510031_)
                                                       (let ((_hd1000710036_
                                                              (##car _hd1000510031_))
                                                             (_tl1000810038_
                                                              (##cdr _hd1000510031_)))
                                                         (let* ((_key10041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1000710036_)
                        (_bind10043_ _tl1000810038_)
                        (_bind-rest10045_ _tl1000610033_))
                   (_K1000410028_ _bind-rest10045_ _bind10043_ _key10041_)))
               (_else1000210018_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_else1000210018_)))))
                                       (_E97719983_))
                                   (_E97719983_)))))
                       (_E977010047_))))
                  (_export-imports9693_
                   (lambda (_src9714_ _r9715_)
                     (letrec* ((_current-ctx9717_
                                (gx#current-expander-context))
                               (_current-phi9718_
                                (gx#current-export-expander-phi))
                               (_import->export9719_
                                (lambda (_in9727_)
                                  (let* ((_in97289736_ _in9727_)
                                         (_E97309740_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _in97289736_)))
                                         (_K97319747_
                                          (lambda (_phi9743_
                                                   _key9744_
                                                   _out9745_)
                                            (if (fx= _phi9743_
                                                     _current-phi9718_)
                                                (if (eq? _src9714_
                                                         (##direct-structure-ref
                                                          _out9745_
                                                          '1
                                                          gx#module-export::t
                                                          '#f))
                                                    (##structure
                                                     gx#module-export::t
                                                     _current-ctx9717_
                                                     _key9744_
                                                     _phi9743_
                                                     _key9744_
                                                     '#t)
                                                    '#f)
                                                '#f))))
                                    (if (##structure-direct-instance-of?
                                         _in97289736_
                                         (##type-id gx#module-import::t))
                                        (let* ((_e97329750_
                                                (##vector-ref _in97289736_ '1))
                                               (_out9753_ _e97329750_)
                                               (_e97339755_
                                                (##vector-ref _in97289736_ '2))
                                               (_key9758_ _e97339755_)
                                               (_e97349760_
                                                (##vector-ref _in97289736_ '3))
                                               (_phi9763_ _e97349760_))
                                          (_K97319747_
                                           _phi9763_
                                           _key9758_
                                           _out9753_))
                                        (_E97309740_)))))
                               (_fold-e9720_
                                (lambda (_in9722_ _r9723_)
                                  (let ((_out9725_
                                         (_import->export9719_ _in9722_)))
                                    (if _out9725_
                                        (cons _out9725_ _r9723_)
                                        _r9723_)))))
                       (cons (##structure
                              gx#export-set::t
                              _src9714_
                              _current-phi9718_
                              (foldl1 _fold-e9720_
                                      '()
                                      (##structure-ref
                                       _current-ctx9717_
                                       '8
                                       gx#module-context::t
                                       '#f)))
                             _r9715_))))
                  (_export!9694_
                   (lambda (_rbody9704_)
                     (letrec* ((_current-ctx9706_
                                (gx#current-expander-context))
                               (_fold-e9707_
                                (lambda (_out9711_ _r9712_)
                                  (if (##structure-direct-instance-of?
                                       _out9711_
                                       'gx#module-export::t)
                                      (cons _out9711_ _r9712_)
                                      (if (##structure-direct-instance-of?
                                           _out9711_
                                           'gx#export-set::t)
                                          (foldl1 cons
                                                  _r9712_
                                                  (##direct-structure-ref
                                                   _out9711_
                                                   '3
                                                   gx#export-set::t
                                                   '#f))
                                          _r9712_)))))
                       (let ((_body9709_ (reverse _rbody9704_)))
                         (begin
                           (##structure-set!
                            _current-ctx9706_
                            (foldl1 _fold-e9707_
                                    (##structure-ref
                                     _current-ctx9706_
                                     '9
                                     gx#module-context::t
                                     '#f)
                                    _body9709_)
                            '9
                            gx#module-context::t
                            '#f)
                           _body9709_)))))
                  (_expanded-export?9695_
                   (lambda (_e9699_)
                     (let ((_$e9701_
                            (##structure-direct-instance-of?
                             _e9699_
                             'gx#module-export::t)))
                       (if _$e9701_
                           _$e9701_
                           (##structure-direct-instance-of?
                            _e9699_
                            'gx#export-set::t))))))
          (let ((_rbody9697_
                 (gx#core-expand-import/export
                  _stx9688_
                  _expanded-export?9695_
                  'apply-export-expander
                  gx#current-export-expander-phi
                  _expand19692_)))
            (if _internal-expand?9689_
                (reverse _rbody9697_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#export (_export!9694_ _rbody9697_))
                 (gx#stx-source _stx9688_)))))))
    (begin
      (define gx#core-expand-export%__0
        (lambda (_stx10097_)
          (let ((_internal-expand?10099_ '#f))
            (gx#core-expand-export%__opt-lambda9686
             _stx10097_
             _internal-expand?10099_))))
      (define gx#core-expand-export%
        (lambda _g12162_
          (let ((_g12161_ (length _g12162_)))
            (cond ((fx= _g12161_ 1) (apply gx#core-expand-export%__0 _g12162_))
                  ((fx= _g12161_ 2)
                   (apply gx#core-expand-export%__opt-lambda9686 _g12162_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-export%
                    _g12162_))))))))
  (define gx#core-expand-export-source
    (lambda (_hd9685_)
      (gx#core-expand-export%__opt-lambda9686
       (cons 'export-macro% (cons _hd9685_ '()))
       '#t)))
  (define gx#core-expand-provide%
    (lambda (_stx9655_)
      (let* ((_e96569663_ _stx9655_)
             (_E96589667_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96569663_)))
             (_E96579681_
              (lambda ()
                (if (gx#stx-pair? _e96569663_)
                    (let ((_e96599671_ (gx#syntax-e _e96569663_)))
                      (let ((_hd96609674_ (##car _e96599671_))
                            (_tl96619676_ (##cdr _e96599671_)))
                        (let ((_body9679_ _tl96619676_))
                          (if (gx#identifier-list? _body9679_)
                              (begin
                                (gx#stx-for-each1
                                 gx#core-bind-feature!
                                 _body9679_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#provide
                                  (gx#stx-map1
                                   gx#core-quote-syntax
                                   _body9679_))
                                 (gx#stx-source _stx9655_)))
                              (_E96589667_)))))
                    (_E96589667_)))))
        (_E96579681_))))
  (begin
    (define gx#core-bind-feature!__opt-lambda9619
      (lambda (_id9621_ _private?9622_ _phi9623_ _ctx9624_)
        (gx#core-bind-syntax!__opt-lambda6715
         _id9621_
         ((if _private?9622_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _id9621_))
         _private?9622_
         _phi9623_
         _ctx9624_)))
    (begin
      (define gx#core-bind-feature!__0
        (lambda (_id9629_)
          (let* ((_private?9631_ '#f)
                 (_phi9633_ (gx#current-expander-phi))
                 (_ctx9635_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9619
             _id9629_
             _private?9631_
             _phi9633_
             _ctx9635_))))
      (define gx#core-bind-feature!__1
        (lambda (_id9637_ _private?9638_)
          (let* ((_phi9640_ (gx#current-expander-phi))
                 (_ctx9642_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9619
             _id9637_
             _private?9638_
             _phi9640_
             _ctx9642_))))
      (define gx#core-bind-feature!__2
        (lambda (_id9644_ _private?9645_ _phi9646_)
          (let ((_ctx9648_ (gx#current-expander-context)))
            (gx#core-bind-feature!__opt-lambda9619
             _id9644_
             _private?9645_
             _phi9646_
             _ctx9648_))))
      (define gx#core-bind-feature!
        (lambda _g12164_
          (let ((_g12163_ (length _g12164_)))
            (cond ((fx= _g12163_ 1) (apply gx#core-bind-feature!__0 _g12164_))
                  ((fx= _g12163_ 2) (apply gx#core-bind-feature!__1 _g12164_))
                  ((fx= _g12163_ 3) (apply gx#core-bind-feature!__2 _g12164_))
                  ((fx= _g12163_ 4)
                   (apply gx#core-bind-feature!__opt-lambda9619 _g12164_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-feature!
                    _g12164_)))))))))
